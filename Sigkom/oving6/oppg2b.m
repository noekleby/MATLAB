n = [0:1:24];
a = 3*cos((pi*n/2)+(pi/6))+10*sin((2*pi*n/3));
subplot(2,1,1)
stem(n,a)
title('Oppgave 2b');
ylabel('x[n]');
xlabel('n');
grid on;
hold on %Del opp i to plot

b = cos((pi*n/2)-(pi/3));
subplot(2,1,2)
stem(n,b)
title('Oppgave 2b');
ylabel('y[n]');
xlabel('n');
grid on;
hold on