function MRP = tree2mat(tree)
% Transformation of tree structure to matrix representation (Internal nodes * Leafs)

MRP = cell2mat(tree.Node);