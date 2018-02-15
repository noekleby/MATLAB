% [H,W] = freqz([1/3 1/3 1/3],1,1024); %Finner frekvensresponsen 
% subplot(2,1,1)
% stem(W/(pi), abs(H), 'g'); %Plotter amplituderespons med normalisert frekvens
% axis([0 1 0 60]);
% ylabel('|H(\omega)|')
% xlabel('\omega/\pi')
% grid on
% hold on
% 
% subplot(2,1,2)
% stem(W/(pi), angle(H), 'g'); %Plotter amplituderespons med normalisert frekvens
% axis([0 1 0 15]);
% ylabel('Faserespons')
% xlabel('\omega/\pi')
% grid on

close all;clear all;
FONTSIZE=14;
[H,W] = freqz([1/3 1/3 1/3],1,1024);
subplot(2,1,1)
plot(W/pi,abs(H));
grid on;
title('Oppgave 3a');
ylabel('|H(\omega)|');
xlabel('\omega/\pi')

subplot(2,1,2)
plot(W/pi,angle(H));
grid on;
ylabel('Faserespons')
xlabel('\omega/\pi')