function evaluer( funksjon, a, b, n )

h = (b-a) / n;

for x = a:h:b
   funksjon(x); 
end

end

