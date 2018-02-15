hold all;
grid on;
x=0.001:0.00015:20
tau=4;
for m= 1:25
plot(x,6*(exp(-(2*pi*0.14)./(tau.*x))), 'linewidth', 1);
end