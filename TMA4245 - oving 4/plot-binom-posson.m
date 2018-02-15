m=3.53;
n=19e6;
x=0:12;
p=1/nchoosek(34,7);
fXp=zeros(1,length(x));
fXb=zeros(1,length(x));
for i=1:length(x)
fXp(i)=poisson(x(i),m);
fXb(i)=binomial(n,x(i),p);
end
xi = 0:0.01:12;
fXpi = interp1(x,fXp,xi);
fXbi = interp1(x,fXb,xi);
subplot(2,1,1)
hold on
scatter(x,fXp)
plot(xi,fXpi)
xlabel('x'); ylabel('P'); title('Poisson-fordeling')
subplot(2,1,2)
xlabel('x'); ylabel('P'); title('Binomisk-fordeling')
scatter(x,fXb)
plot(xi,fXbi)
shg
