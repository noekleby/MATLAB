function y = fakultet( n )
if n==1
    y=1;
elseif n>1
    y=n*fakultet(n-1)
end

end

