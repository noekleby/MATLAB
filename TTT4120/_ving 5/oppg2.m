%2a
file=load('signals.mat');
x=file.x;
y=file.y;

figure
subplot(2,1,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Sendt');
subplot(2,1,2);
stem(y);
xlabel('n');
ylabel('y(n)');
title('Mottat');

%%
%2b
file=load('signals.mat');
x=file.x;
y=file.y;
r=xcorr(y, x);
L=length(r)-1;
l=-L+1:L-1;
stem(r);
xlabel('l')
ylabel('r_{yx}(l)')
title('Krysskorrelasjon med xcorr i matlab');
%%
%2c
x_reverse=fliplr(x);
rxx=conv(y, x_reverse);
stem(rxx);
xlabel('l');
ylabel('r_{yx}(l)');
title('Krysskorrelasjon med conv i matlab');
