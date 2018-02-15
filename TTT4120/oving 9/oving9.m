%Problem 1
%d
fc = 0.2;
N = 31;
w_rect = rectwin(N);
w_hamm = hamming(N);

filtercoeff_rect = oppg1c(fc,w_rect);
filtercoeff_hamm = oppg1c(fc,w_hamm);

[h1,w1] = freqz(filtercoeff_rect,1);
[h2,w2] = freqz(filtercoeff_hamm,1);

figure(1)
subplot(2,1,1);
plot(w1/(2*pi),abs(h1));
title('Rectangular windowing');
xlabel('Frequency');
ylabel('Magnitude');
subplot(2,1,2);
plot(w2/(2*pi),abs(h2));
title('Hamming windowing');
xlabel('Frequency');
ylabel('Magnitude');

% Rectangular windowing gives more ripple, but a faster fall time for the
% curve.
%%
%e)
fc = 0.2;
N = 31;
h_rect = fir1(N,fc,rectwin(N+1)); %Rectangular
h_hamm = fir1(N,fc); %Hamming
[h1,w1] = freqz(h_rect,1);
[h2,w2] = freqz(h_hamm,1);

figure(2)
subplot(2,1,1);
plot(w1/(2*pi),abs(h1));
title('Rectangular windowing');
xlabel('Frequency');
ylabel('Magnitude');
subplot(2,1,2);
plot(w2/(2*pi),abs(h2));
title('Hamming windowing');
xlabel('Frequency');
ylabel('Magnitude');

%%
%Problem 2
%c)
b=[1 1];
a=[1 -0.51];

[h, w]=freqz(0.245*b, a);
plot(w/(2*pi),abs(h));
xlabel('Frequency');
ylabel('Magnitude');
%%
%Problem 3
%b)
b = 1;
a = [1 sqrt(2) 1];

[h, w]=freqz(b, a);
plot(w,abs(h));
xlabel('Frequency');
ylabel('Magnitude');
title('Butterworth filter');

%%
%Problem 4
%d)
% The equiripple and windowing method filters are of high order and requires a
% lot of computation, but they both gives linear phase responses. The elliptic
% filter is the opposite of these two filters.

%e)
before = audioread('pianoise.wav');
Fs = 20000;
soundsc(before, Fs);
pause(20);
after = filter(Hamming, 1, before);
soundsc(after, Fs);

%The noise is removed after filtering.