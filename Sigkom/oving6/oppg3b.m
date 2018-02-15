t = linspace(0,25,100);
rng default
x = 3*cos((pi*t/2)+(pi/6))+10*sin((2*pi*t/3));

a = 1;
b = 0.33;

y = filter(b,a,x);

plot(t,x,'-')
hold on
plot(t,y,'*')

grid on
legend('Input-data, x','Filtrert Data, y','Location','NorthWest')
title('Oppgave 3b: Plott av x[n] og y[n]')
xlabel('n');