function gangetabell = timesTable( n )
gangetabell = zeros(n);
for i=1:n
    for j=i:n
        gangetabell(i, j) = j*i;
        gangetabell(j, i) = j*i;
    end
end
end

