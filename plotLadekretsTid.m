hold all;
grid on;
t=0.001:0.00015:3.14
tau=3.14/5;
for m= 1:25
plot(t,6*(exp(-(t)./(tau))), 'linewidth', 1);
end

% x=0.001:0.00015:20
% for m= 1:25
% plot(x,6*(1-exp(-(2*pi*0.14)./(tau.*x))), 'linewidth', 1);
% end