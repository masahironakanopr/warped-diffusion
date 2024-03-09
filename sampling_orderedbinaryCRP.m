function t = sampling_orderedbinaryCRP(customers, theta, alpha)

t = tree(customers);
temp = t.treefun(@sum);
nonterminals = find(temp > 1);
while isempty(nonterminals) == 0
    ii = nonterminals(1); % First tableID of nonterminals
    temp_customers = t.get(ii);
    tableAssign = sampling_binaryCRP(temp_customers, theta, alpha);
    for jj=1:size(tableAssign,1)
        t = t.addnode(ii, tableAssign(jj,:));
    end
    temp = t.treefun(@sum);
    nonterminals = find(temp > 1 );
    nonterminals(nonterminals <= ii) = [];
end