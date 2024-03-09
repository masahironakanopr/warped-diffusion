function tableAssign = sampling_binaryCRP(customers, theta, alpha)
% tableAssign: TableID x customersID (binary indicator)
% theta: concentration parameter
% alpha: discount parameter
% customers: binary sequence, [1 x number of customers]

activeID = find(customers==1);
tableAssign = zeros(size(customers));
activeID = activeID(randperm(length(activeID))); % Exchangeable w.r.t customer order

for ii=2:length(activeID) % Note: First customer is automatically removed.
    % table choice for customer ID: activeID(ii)
    if ii == 2
        tableAssign(activeID(ii)) = 1;
    else
        weights = [sum(tableAssign,2) - alpha; size(tableAssign,1) * alpha + theta]' ;
        choice = randsample(length(weights),1,true,weights);
        if choice == length(weights) % Generate a new table
            tableAssign = [tableAssign; zeros(size(customers))];
            tableAssign(length(weights),activeID(ii)) = 1;
        else
            tableAssign(choice,activeID(ii)) = 1;
        end
    end
end

tableAssign = tableAssign(1,:);
tableAssign = [tableAssign; customers-tableAssign];

