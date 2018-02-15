function price = calcLow ( speedAboveLimit )
if (speedAboveLimit > 0)
    if (speedAboveLimit < 16)
        price = 2900;
    elseif (speedAboveLimit > 15)
        price = 6500;
    end
else
        price = 0;
end

