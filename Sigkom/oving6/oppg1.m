f = [0:0.01:5000];
a = ((1/3)*(2*abs(sin(f/2))))./(sqrt(1+2*(1/3)*cos(f)+(1/3)^2));
plot((f/pi),a);
title('Oppgave 1a');
ylabel('|H(\omega)|');
xlabel('\omega/\pi');
axis([0 1 0 1]);
grid on;