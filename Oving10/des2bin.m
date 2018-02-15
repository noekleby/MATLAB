function bin = des2bin( descimal )
    if descimal == 1
        bin = '1';
    elseif descimal == 0
        bin = '0';
    else
        if rem(descimal,2)==0
            bin = [des2bin(descimal/2) '0'];
        else
            bin = [des2bin((descimal-1)/2) '1'];
        end
    end

end


