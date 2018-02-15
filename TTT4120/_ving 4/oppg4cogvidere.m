%Oppgave 4c
L=500;
N=4000;
n=0:1:L-1;
Ax=0.25;
Ay=0.25;
fx=0.04;
fy=0.10;

d=Ax*cos(2*pi*fx*n)+Ay*cos(2*pi*fy*n);
e=randn(1, L);

g=d+e;
z=[-1 1]';
fx=0.04;
fy=0.10;
px=[0.99*exp(j*2*pi*fx) 0.99*exp(-j*2*pi*fx)]';
py=[0.99*exp(j*2*pi*fy) 0.99*exp(-j*2*pi*fy)]'; 

q1=filter(poly(z),poly(px),g);
q2=filter(poly(z),poly(py),g); 
Qf1=fft(q1,N);
Qf2=fft(q2,N);
hold on
subplot(4,1,1);
plot(n,q1)
xlabel('n')
ylabel('q_x(n)')
f=0:1/N:1-1/N; 
subplot(4,1,2);
plot(f,abs(Qf1))
xlabel('f')
ylabel('|q_x(f)|')
subplot(4,1,3);
plot(n,q2)
xlabel('n')
ylabel('q_y(n)')
f=0:1/N:1-1/N; 
subplot(4,1,4);
plot(f,abs(Qf2))
xlabel('f')
ylabel('|q_y(f)|')
%%
%Oppgave 4d)
L=500;
N=3000;
n=0:1:L-1;
Ax=0.25;
Ay=0.25;
fx=0.04;
fy=0.10;

d=Ax*cos(2*pi*fx*n)+Ay*cos(2*pi*fy*n);
e=randn(1, L);

g=d+e;
fx=0.04;
fy=0.10;
px=[0.99*exp(j*2*pi*fx) 0.99*exp(-j*2*pi*fx)]';
py=[0.99*exp(j*2*pi*fy) 0.99*exp(-j*2*pi*fy)]'; 
z=[-1 1]';
[Hx,w]=freqz(poly(z),poly(px)); 
[Hy,w]=freqz(poly(z),poly(py));
f=w/(2*pi);

hold on
H=Hx+Hy; 
subplot(3,1,1);
plot(f,abs(H));
xlabel('f')
ylabel('|H_{resulting}(f)|')

z(3:4)=roots(poly(px)+poly(py));
p=[px;py]; 
subplot(4,1,2);
zplane(z,p);

q=filter(poly(z),poly(p),g); 
Qf=fft(q,N);
subplot(4,1,3);
plot(n,q) 
xlabel('n')
ylabel('Q_{combined}(n)')
f=0:1/N:1-1/N; 
subplot(4,1,4);
plot(f,abs(Qf))
xlabel('f')
ylabel('|Q_{combined}(f)|')