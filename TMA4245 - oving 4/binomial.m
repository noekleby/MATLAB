function fX = binomial(n,x,p)
fX = nchoosek(n,x)*p^x*(1-p)^(n-x);
end
