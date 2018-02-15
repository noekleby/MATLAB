function returns = momentum( start_amount, n, closing_prices )

daily_returns = daily_return(closing_prices);
cash = start_amount;
investert = 0;

for i=n:length(closing_prices)
    investert = investert*(closing_prices(i)/closing_prices(i-1));
    if is_going_up(n,i,daily_returns) 
    investert = investert + cash;
    cash = 0;
    else
    cash = investert + cash;
    investert = 0;
    end
end
returns = cash + investert;
end

