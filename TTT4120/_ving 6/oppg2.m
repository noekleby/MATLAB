%Oppgave 2 a)
n = 0:27;
x = 0.9.^n;
nh = 0:8;
h = 1.^nh;
y = conv(x,h);
l = 0:(length(y)-1);
stem(l,y);
xlabel('n');
ylabel('y(n)');

%Lengden av N_{y} er som i plottet Nx + Nh - 1 = 28 + 9 - 1 = 36.

%%
%Oppgave 2 b)
ny = 36;
n = 0:27;
x = 0.9.^n;
nh = 9;
h = ones(1,nh);
ya = conv(x,h);
l = 0:(length(ya)-1);
hf1 = fft(h,ny/4);
hf2 = fft(h,ny/2);
hf3 = fft(h,ny);
hf4 = fft(h,2*ny);

xf1 = fft(x,ny/4);
xf2 = fft(x,ny/2);
xf3 = fft(x,ny);
xf4 = fft(x,2*ny);

yf1 = hf1.*xf1;
yf2 = hf2.*xf2;
yf3 = hf3.*xf3;
yf4 = hf4.*xf4;

yn1 = ifft(yf1,ny/4); yn2= ifft(yf2,ny/2); yn3 = ifft(yf3,ny); yn4 = ifft(yf4,2*ny);

hold on 
subplot(2,2,1);
stem(yn1, 'g');
%stem(ya, 'r');
xlabel('n');
ylabel('y_{ny/4}');

hold on 
subplot(2,2,2);
stem(yn2, 'g');
%stem(ya, 'r');
xlabel('n');
ylabel('y_{ny/2}');

hold on 
subplot(2,2,3);
stem(yn3, 'g');
%stem(ya, 'r');
xlabel('n');
ylabel('y_{ny}');

hold on 
subplot(2,2,4);
stem(yn4, 'g');
%stem(ya, 'r');
xlabel('n');
ylabel('y_{2*ny}');