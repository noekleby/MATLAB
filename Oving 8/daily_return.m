function rate = daily_return( closing_price )
rate = zeros(size(closing_price, 2), 1);
    for i=2:length(closing_price)
        rate(i) = closing_price(i)-closing_price(i-1);
    end
end