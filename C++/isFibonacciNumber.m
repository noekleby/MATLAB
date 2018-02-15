function result =isFibonacciNumber( n )
a=0;
b=1;
while b<n
    temp = b;
    b= a+b;
    a=temp;
end
if b==n
    result = true;
else
    result=false;
end
end

