function output = laguerre( x,n )
    if n<=0
        output = 1;
    elseif n==1
        output = 1 - x;
    else
        output=(2*n-1-x)*laguerre(x,n-1)-(n-1).^2*(laguerre(x,n-2));

    end
end

