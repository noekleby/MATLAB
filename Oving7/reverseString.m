function reverser = reverseString( a )
for i=1:size(a,2)
    reverser(i) = a(size(a,2)+1-i);
end

end

