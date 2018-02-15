%Oppgave 3 b)
f1 = 7/40;
f2 = 9/40;
subplot(4,1,1);
n = 0:99;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 1024;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('n = 100');

subplot(4,1,2);
n = 0:999;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 1024;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('n = 1000');

subplot(4,1,3);
n = 0:29;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 1024;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('n = 30');

subplot(4,1,4);
n = 0:9;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 1024;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('n = 10');

%Oppgave c)

figure(2);
subplot(2,1,1);
n = 0:99;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 256;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('N (DFT length) = 256');

subplot(2,1,2);
n = 0:99;
xn = sin(2*pi*f1*n)+sin(2*pi*f2*n);
N = 128;
xf = fft(xn,N);
l = linspace(0,1,length(xf));
plot(l,abs(xf));
ylabel('|X(f)|');
xlabel('f');
title('N (DFT length) = 128');

