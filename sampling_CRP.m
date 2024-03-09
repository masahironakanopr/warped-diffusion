function tableAssign = sampling_CRP(customers, theta, alpha)
% tableAssign: TableID x customersID (binary indicator)
% theta: concentration parameter
% alpha: discount parameter
% customers: binary sequence, [1 x number of customers]

activeID = find(customers==1);
tableAssign = zeros(size(customers));

for ii=1:length(activeID)
    % table choice for customer ID: activeID(ii)
    if ii == 1
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

% Generate table order (Note: oCRP has uniforly random order of tables)
temp = randperm(size(tableAssign,1));
tableAssign = tableAssign(temp,:);