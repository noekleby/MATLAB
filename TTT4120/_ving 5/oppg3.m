%Filter 1
alpha=0.8;
R=7;

[y, Fs]=audioread('piano.wav');

coefficients=zeros(1, R+1);
coefficients(1)=1;
coefficients(end)=alpha;

[H, w]=freqz(coefficients, 1);
[h, n]=impz(coefficients, 1);

subplot(2,1,1);
plot(w, abs(H));
xlabel('w');
ylabel('|H(w)|');
title('Frekvensrespons, a=0.8, R=7');

subplot(2,1,2);
stem(n, h);
axis([0 R+5 0 1]);
xlabel('n');
ylabel('x(n)');
title('Impulsrespons, a=0.8, R=7');

y2=filter(coefficients,1, y);

sound(y2, Fs);

%%
%Filter 2
N=6;
alpha=0.8;
R=14;
[y, Fs]=audioread('piano.wav');

b=zeros(1, ((N-1)*R)+1);
a=zeros(1, R+1);

b(1)=1;
b((N-1)*R+1)=-alpha^N;

a(1)=1;
a(R+1)=-alpha;

[H, w]=freqz(b, a);
[h, n]=impz(b, a);

figure
subplot(2,1,1);
plot(w, abs(H));
xlabel('w');
ylabel('|H(w)|');
title('Frekvensrespons, a=0.8, R=14');

subplot(2,1,2);
stem(n, h);
xlabel('n');
ylabel('h(n)');
title('Impulsrespons, a=0.8, R=14');


y2=filter(b, a, y);

sound(y2, Fs);