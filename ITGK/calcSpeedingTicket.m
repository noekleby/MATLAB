function price = calcSpeedingTicket ( speed, limit )
differanse = speed - limit; %Differanse = speedAboveLimit%
if (differanse > 0)
    if (limit > 0 && limit <= 60)
        price = calcLow(differanse);
    elseif (limit >= 70 && limit <= 80)
        price = calcMedium(differanse);
    elseif (limit > 90)
        price = calcHigh(differanse);
    end
else
    price = 0;
end
