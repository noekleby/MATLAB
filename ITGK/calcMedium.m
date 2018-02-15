function price = calcMedium ( speedAboveLimit )
if (speedAboveLimit > 0)
    if (speedAboveLimit <= 15)
        price = 2600;
    elseif (speedAboveLimit >= 16)
        price = 4900;
    elseif (speedAboveLimit >= 26)
        price = 7800;
    end
else
        price = 0;
end

