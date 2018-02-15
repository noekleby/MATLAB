%alpha = -0.9
a=-0.9;
n=0:50;
l=-50:50;
f=-0.5:0.01:0.5;

x=a.^n;
rxx=(a.^abs(l))/(1-(a^2));
Sxx=(1./(1-(2*a*cos(2*pi*f))+a^2));

figure
subplot(1,3,1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
title('alpha = -0.9');
subplot(1,3,2);
stem(l, rxx);
xlabel('l');
ylabel('r_{xx}(l)');

subplot(1,3,3);
stem(f, Sxx);
xlabel('f');
ylabel('S_{xx}(f)');

%%
%alpha = 0.5
a=0.5;
n=0:50;
l=-50:50;
f=-0.5:0.01:0.5;

x=a.^n;
rxx=(a.^abs(l))/(1-(a^2));
Sxx=(1./(1-(2*a*cos(2*pi*f))+a^2));

figure
subplot(1,3,1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
title('alpha = 0.5');
subplot(1,3,2);
stem(l, rxx);
xlabel('l');
ylabel('r_{xx}(l)');

subplot(1,3,3);
stem(f, Sxx);
xlabel('f');
ylabel('S_{xx}(f)');
 %%
 %alpha = 0.9
a=0.9;
n=0:50;
l=-50:50;
f=-0.5:0.01:0.5;

x=a.^n;
rxx=(a.^abs(l))/(1-(a^2));
Sxx=(1./(1-(2*a*cos(2*pi*f))+a^2));

figure
subplot(1,3,1);
stem(n, x);
xlabel('n');
ylabel('x(n)');
title('alpha = 0.9');
subplot(1,3,2);
stem(l, rxx);
xlabel('l');
ylabel('r_{xx}(l)');

subplot(1,3,3);
stem(f, Sxx);
xlabel('f');
ylabel('S_{xx}(f)');
