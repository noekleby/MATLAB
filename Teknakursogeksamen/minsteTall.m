function val = minsteTall ( vector )
small = vector(1);
    for i = 1 : length ( vector )
        if ( vector(i) < small )
            small = vector(i);
        end
    end
val = small;
end