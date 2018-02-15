function lengde = perimeter( x,y )
lengde = hypot(x(length(x))-x(1),y(length(y))-y(1));
for i=2:1:length(x)
    lengde=lengde+hypot(x(i)-x(i-1),y(i)-y(i-1));
end

