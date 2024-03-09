function ID = find_depthfirst_decomposableTable(t)
% t: tree structure

temp = unique(t.Parent);
iterator = t.depthfirstiterator;

for ii=iterator
    if sum(t.get(ii)) > 1 && ismember(ii, temp)==0
        ID = ii;
        break
    end
end
