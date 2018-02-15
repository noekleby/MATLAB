%-------------------------
%Øving 7  TTT4120
%Magnus Pedersen
%-------------------------
%%

%Oppgave 1
%a)
x = 1:100;
figure(1);
subplot(3,1,1);
y1 = randi([0 1],1,100)*2-1; 
stem(x,y1);
title('White binary noise');
subplot(3,1,2);
y2 = randn(1,100); 
stem(x,y2);
title('White gaussian noise');
subplot(3,1,3);
y3 = rand(1,100).*y1*sqrt(3);
stem(x,y3);
title('White uniform noise');

%Binær skifter kun mellom de binære verdiene 0 og 1. Verdiene til den
%gaussiske støyen er stort sett konsentrert rundt y=0, mens den uniforme
%støyen er mer uniformt fordelt om y-aksen. 

%%
%c)
N = 20000;
y1 = randi([0 1],1,N)*2-1; y1_mean = mean(y1)
y2 = randn(1,N); y2_mean = mean(y2)
y3 = rand(1,N).*y1*sqrt(3);y3_mean = mean(y3)

% Forventningsverdiene ligger veldig nært 0, noe som passer bra med den
% teoretiske verdien i oppgave b).

figure(2);
subplot(3,1,1);
stem(xcorr(y1));
title('Autokorrelasjon, white binary noise');
axis([-10 10 0 5]);
subplot(3,1,2);
stem(xcorr(y2));
title('Autokorrelasjon, white Gaussian noise');
axis([-10 10 0 5]);
subplot(3,1,3);
stem(xcorr(y3));
title('Autokorrelasjon, white uniform noise');
axis([-10 10 0 5]);

%Plottene fungerer dårlig, dog.
%%
%Oppgave 2
%c)
N = 20000;

Y2 = randn(1, N); %Gaussisk hvit støy

num = 1;
denum = [1 -1/2];
x = filter(num, denum, Y2);
autocorr = xcorr(x);
figure(3);
stem(autocorr);
axis([-10 10 0 5]);
forventningsverdi = mean(x)
power = sum(x.^2)/length(x)

Fs = 1000; 
n = length(x);
xdft = fft(x);
xdft = xdft(1:n/2+1);
psdx = (1/(Fs*n)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;

figure(4);
%plot(freq,10*log10(psdx))
grid on
title('Periodogram')
xlabel('f')
ylabel('Power')
axis([0 0.5 0 20]);

%%
%d)

%%
%Oppgave 3
%a)
%#UKA