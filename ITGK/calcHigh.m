function price = calcHigh ( speedAboveLimit )
if (speedAboveLimit > 0)
    if (speedAboveLimit < 16)
        price = 2600;
    elseif (speedAboveLimit < 25)
        price = 4900;
    elseif (speedAboveLimit < 35)
        price = 7800;
    elseif (speedAboveLimit >= 36)
        price = 9000;
    end
else
        price = 0;
end

