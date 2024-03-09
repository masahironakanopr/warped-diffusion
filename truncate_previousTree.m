function t = truncate_previousTree(previousTree, i)

t = tree(previousTree.get(1));
for ii=1:i
    t = t.addnode(previousTree.Parent(2*ii), previousTree.get(2*ii));
    t = t.addnode(previousTree.Parent(2*ii+1), previousTree.get(2*ii+1));
end