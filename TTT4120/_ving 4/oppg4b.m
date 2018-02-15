hold on
fx=0.04;
fy=0.10;
px=[0.99*exp(j*2*pi*fx) 0.99*exp(-j*2*pi*fx)]';
py=[0.99*exp(j*2*pi*fy) 0.99*exp(-j*2*pi*fy)]'; 
z=[-1 1]';
subplot(2,1,1);
zplane(z,px) 
grid
title('H_x(z)')
subplot(2,1,2);
zplane(z,py)
grid
title('H_y(z)')

%%
%Frekvensrespons:

[Hx,w]=freqz(poly(z),poly(px)); 
[Hy,w]=freqz(poly(z),poly(py));
f=w/(2*pi);
subplot(2,1,1);
plot(f,abs(Hx));
xlabel('f')
ylabel('|H_x(f)|');
subplot(2,1,2);
plot(f,abs(Hy));
xlabel('f')
ylabel('|H_y(f)|');

