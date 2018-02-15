% Oppgave 2
% c)

R_r = [-0.5 0 0];

a1 = -(-0.5/1.25)
sigma_1 = 1.25+a1*-0.5

R2_l = [1.25 -0.5; -0.5 1.25];
coefficients_2 = -R_r(1:2)*R2_l^-1

sigma_2 = 1.25+coefficients_2(1)*-0.5+coefficients_2(2)*0
R3_l = [1.25 -0.5 0;-0.5 1.25 -0.5; 0 -0.5 1.25];

coefficients_3 = -R_r(1:3)*R3_l^-1
sigma_3 = 1.25+coefficients_3(1)*-0.5+coefficients_3(2)*0+coefficients_3(3)*0

%%
% d)

f = 0:0.01:2*pi; w = 2*pi*f;

sigma = [1.05 1.01 1];
a1 = 0.4; a2 = [0.48 0.19]; a3 = [0.49 0.24 0.09];

pds1 = (sigma(1)^2)./(abs((1+a1*exp(-j*w))).^2);
pds2 = (sigma(2)^2)./(abs((1+a2(1)*exp(-j*w)+a2(2)*exp(-j*w*2))).^2);
pds3 = (sigma(3)^2)./(abs((1+a3(1)*exp(-j*w)+a3(2)*exp(-j*w*2)+a3(3)*exp(-j*w*3))).^2);

pds = 1.25 - cos(w); %fra oppg b)

figure
subplot(3,1,1);
title('Power Density Spectrum');
hold on;
grid on;
plot(f, pds1, '-r');
plot(f, pds, 'b');
xlabel('f');
ylabel('PDS');
legend('Estimert', 'PDS', 'Location','northwest');
axis([0 .5 0 4]);

subplot(3,1,2);
hold on;
grid on;
plot(f, pds2, '-r');
plot(f, pds, 'b');
xlabel('f');
ylabel('PDS');
legend('Estimert', 'PDS', 'Location','northwest');
axis([0 .5 0 4]);


subplot(3,1,3);
hold on;
grid on;
plot(f, pds3, '-r');
plot(f, pds, 'b');
xlabel('f');
ylabel('PDS');
legend('Estimert', 'PDS', 'Location','northwest');
axis([0 .5 0 4]);

%Estimatet blir mer og mer presist for høyere orden og AR[3] gir den beste tilnærmingen. 

%% 
% Oppgave 3

Fs=8000;

wovel = audiorecorder(Fs, 16, 2);
lpcWovel = lpc(wovel,10); %AR[10]-prosess

a = audioread('a.wav'); %a
lpca = lpc(a,10); %AR[10]-prosess
e = audioread('e.wav'); %e
lpce = lpc(e,10); %AR[10]-prosess
i = audioread('i.wav'); %i
lpci = lpc(i,10); %AR[10]-prosess
o = audioread('o.wav'); %o 
lpco = lpc(o,10); %AR[10]-prosess
u = audioread('u.wav'); %u
lpcu = lpc(u,10); %AR[10]-prosess
y = audioread('y.wav'); %y
lpcy = lpc(y,10); %AR[10]-prosess
ae = audioread('ae.wav'); %æ
lpcae = lpc(ae,10); %AR[10]-prosess
oe = audioread('oe.wav'); %ø
lpcoe = lpc(oe,10); %AR[10]-prosess
aa = audioread('aa.wav'); %å
lpcaa = lpc(aa,10); %AR[10]-prosess

av1=filter(lpWovel, 1, wovel);
%sound(av1, Fs);

av2=filter(1, lpcy, avy); %filter med y
sound(av2, Fs);