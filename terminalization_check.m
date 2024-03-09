function result = terminalization_check(nonterminals)

temp = 0;
for ii=1:size(nonterminals,2)
    temp = temp + isempty(nonterminals{ii});
end

if temp == size(nonterminals,2)
    result = 1;
else
    result = 0;
end