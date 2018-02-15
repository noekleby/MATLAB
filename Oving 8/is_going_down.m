function rate = is_going_down( n, i, daily_return )
rate = true;
    for j=(i-n+1):i
        if daily_return(j)>0
            rate=false;
        end
    end
end
