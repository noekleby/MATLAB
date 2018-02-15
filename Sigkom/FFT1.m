x=[1,0,1/4,0,1/16,0];
N=6; L=100*N;
X1=fft(x,L);
f1=(0:(L-1))/(2*L);
stem(f1,abs(X1))
xlabel('f');