f = [0:0.01:5000];
a = ((1/3)*abs(1+2*cos(f)));
subplot(2,1,1)
plot((f/pi),a)
title('Oppgave 2a');
ylabel('|H(\omega)|');
xlabel('\omega/\pi');
axis([0 1 0 1]);
grid on;
hold on %Del opp i to plot

subplot(2,1,2)
[H,W] = freqz([1/3 1/3 1/3],1,1024);
plot(W/pi,angle(H));
ylabel('Faserespons')
xlabel('\omega/\pi')
ylabel('Faserespons');
xlabel('\omega/\pi');
grid on;