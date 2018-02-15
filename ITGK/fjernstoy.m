function bildeut = fjernstoy( bildeinn )
[rader, kolonner] = size(bildeinn);
bildeut=bildeinn;
for r=2:rader-1
    for k=2:kolonner-1
        bildeut(r,k) = finnMedianen(bildeinn(r-1:r+1, k-1:k+1));
    end
end

end

function medianen = finnMedianen(M)
vektor = sort(M(:));
medianen = vektor(5);
end