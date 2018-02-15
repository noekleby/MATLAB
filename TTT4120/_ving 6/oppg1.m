%Oppgave 1a
f=0:1/10000:1;
x=((1-(0.9*exp(-j*2*pi*f)).^28)./(1-0.9*exp(-j*2*pi*f)));
plot(f, abs(x));
xlabel('f');
ylabel('|X(F)|');
title('Magnitudeplot');

%%
%Oppgave 1b
nx = 28;
n=0:(nx-1);
x = 0.9.^n;
Xk1=fft(x,(nx/4));
Xk2=fft(x,(nx/2));
xk3=fft(x,(nx));
xk4=fft(x,(2*nx));


%Oppgave 1d
f=0:1/10000:1;
x=((1-(0.9*exp(-j*2*pi*f)).^28)./(1-0.9*exp(-j*2*pi*f)));
figure(2);
subplot(2,2,1);
hold on
plot(f,abs(x));
l = linspace(0,1,length(Xk1));
stem(l,abs(Xk1));
xlabel('f');
ylabel('|X(F)|');
title('DFT N_{x}/4');

subplot(2,2,2);
hold on
plot(f,abs(x));
l = linspace(0,1,length(Xk2));
stem(l,abs(Xk2));
xlabel('f');
ylabel('|X(F)|');
title('DFT N_{x}/2');

subplot(2,2,3);
hold on
plot(f,abs(x));
l = linspace(0,1,length(xk3));
stem(l,abs(xk3));
xlabel('f');
ylabel('|X(F)|');
title('DFT N_{x}');

subplot(2,2,4);
hold on
plot(f,abs(x));
l = linspace(0,1,length(xk4));
stem(l,abs(xk4));
xlabel('f');
ylabel('|X(F)|');
title('DFT 2*N_{x}');
