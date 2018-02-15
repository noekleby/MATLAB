x=[1,0,1/4,0,1/16,0];
N=6; L=2*N;
X1=fft(x,L);
f1=(0:(L-1))/(2*L);
subplot(2,2,1)
stem(f1,abs(X1))
xlabel('f');
hold on
N=6; L=5*N;
X1=fft(x,L);
f1=(0:(L-1))/(2*L);
subplot(2,2,2)
stem(f1,abs(X1))
xlabel('f'); 
hold on
subplot(2,2,3)
N=6; L=10*N;
X1=fft(x,L);
f1=(0:(L-1))/(2*L);
stem(f1,abs(X1))
xlabel('f'); 
hold on