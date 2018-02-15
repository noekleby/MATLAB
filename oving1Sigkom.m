%% Øving 1 - Signalbehandling og kommunikasjon
% 
% * Magnus Nøkleby Pedersen (magnusnp)
% * MTEL
% 


%% Problem 1 - Vectors and matrices
%% a)
A = [1 2; 3 4]
B = [2 -1; 0 1]
v = [0 0 1]
C = A*B
%%
% Multiplisere matrisene komponentvis:
D = A.*B
%%
% Transponerer matrise v
vT = transpose(v)

%% b) Replacing indexes
y = zeros(1,10)
%%
% Even indexed elements = Pi
%%
% Solution 1:
for i=2:2:10
    y(i) = pi;
end
%%
% Solution 2:
y([2:2:end]) = pi

%% Problem 2 Complex numbers

z1 = 2*exp((pi/6)*j);
z2 = j-1;
%% a) Imaginary and real parts:
% Z1:
imag(z1)
real(z1)
%%
% Z2^*:
imag(conj(z2))
real(conj(z1))
%%
% Z1*Z2:
imag(z1*z2)
real(z1*z2)
%%
% Z1/Z2:
imag(z1/z2)
real(z1/z2)

%% b) Absolute value and argument:
% Z1^*:
abs(conj(z1))
angle(conj(z1))
%%
% Z2:
abs(z2)
angle(conj(z2))
%%
% Z1*Z2:
abs(z1*z2)
angle(z1*z2)
%%
% Z1/Z2:
abs(z1/z2)
angle(z1/z2)
%% Problem 3 Plotting functions
% y1 = sin(t)
%%
% y2 = t^2 + cos(t) + e^(t^2)/(10^16)

%% a)Continuous signals
t = 0:0.01:2*pi;
y1 = sin(t);
y2 = t.^2 + cos(t) + exp(t.^2)/(10.^16);
plot(t, sin(t))
title('sin(t), t\in [0,2\pi]')
ylabel('y1')
figure
plot(t, y2, 'r')
xlabel('t')
ylabel('y2')
title('t^2 + cos(t) + e^{t^2}/10^{16}, t \in [0, 2\pi]')
xlabel('t')
%%
% Subplots av funksjonene Y1 og Y2:
subplot(2,1,1);
plot(t,sin(t),'r');
ylabel('y = sin(t)');
subplot(2,1,2);
plot(t,t.^2 + cos(t) + exp(t.^2)/(10.^16));
axis([0,2*pi,0,5]);
xlabel('t'); ylabel('y = t^2 + cos(t) + e^(t^2)/(10^16)');
subplot(111)
%% b) Plot av diskret signal
n = -10:10;
stem(n, sin(2*pi*(n/10)));
title('y3(n) = sin(2*pi*(n/10))');
xlabel('n');
ylabel('y');

%% Problem 4
%% a) Lese inn Dolly.wav og høre på den:
[y,Fs] = audioread('Dolly.wav');
soundsc(y,Fs)
%% b) Changing of sampling frequencies
%%
% Samplingfrekvens på 16kHz:
[y] = audioread('Dolly.wav');
soundsc(y,16000)
%%
% Ved 16kHz blir sangstemmen mørkere og sangen tregere.
%%
% Samplingfrekvens på 32kHz:
[y] = audioread('Dolly.wav');
soundsc(y,32000)
%%
% Ved 32kHz blir sangstemmen lysere og sangen går fortere.
%% c) Load and display Lena
% Lena.jpg:
A = imread('Lena.jpg');
image(A), axis image, axis off
%% d)
% The negative image:
IM2 = imcomplement(A);
image(IM2), axis image, axis off