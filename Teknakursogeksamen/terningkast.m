function snitt = terningkast( n )
teller =0;
    for i = 1:10000
        kast = randi(6);
        teller = teller + 1;
        while kast ~= n
            kast=randi(6);
            teller = teller+1;
        end
    end
    snitt = 10000/teller;

end

