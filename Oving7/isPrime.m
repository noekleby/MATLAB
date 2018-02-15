function primtall = isPrime( x )
primtall = true;
if x > 1
    for i=2:sqrt(x)
        if mod(x,i)==0
            primtall = false;
            return;
        else
            primtall = true;
            return;
        end
    end
else 
    primtall = false;
end
end
