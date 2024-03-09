function t = tree_evolution(t, theta, alpha)

ID = find_depthfirst_decomposableTable(t);

temp_customers = t.get(ID);
tableAssign = sampling_binaryCRP(temp_customers, theta, alpha);
for jj=1:size(tableAssign,1)
    t = t.addnode(ID, tableAssign(jj,:));
end