function lengde = vektorLengde( vektor )
sum = 0;
for i=1:length(vektor)
    sum= sum+((vektor(i))^2);
end
lengde = sqrt(sum);
end

