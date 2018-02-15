%Oppgave 2 
%b

f = 30; a = 0.5; n1 = 2; n2 = 1; Nit = 3;
w = 2*pi*f*10^9;
e = 8.85*10^(-12); %permeability
mu_0 = 4*pi*10^(-7);
e1=(n1^2)*e; %inside the slab
e2=(n2^2)*e; %outside

r = w*sqrt(mu_0*(e1-e2)); %from 1g)
R = a*r*10^-2; %from 2a)
u = 0:0.01:R;

figure(1);
hold on
for m = 0:1:1
    v1 = u.*tan(u-m*(pi/2));
    v2 = sqrt(R.^2-u.^2);
    if(m==0){plot(u,v1,'r')} %even modes
    else {plot(u,v1,'b')} %odd modes
    legend('Even', 'Odd', 'Location','northwest');
    end
    plot(u,v2);
end
xlabel('u'); ylabel('v');
axis([0 7 0 7]);

% C)

[be,kc,ac,fc,err] = dguide(f,a,n1,n2,Nit);
be = be*10^2;
for j = 1:4
     ky(j) = sqrt(e*mu_0*w^2-(be(j)).^2);
     u(j) = ky(j)*a*10^(-2);
     scatter(u(j),v(j));
     alpha(j) = sqrt((be(j)).^2-w^2*e2^2*mu_0);
     v(j) = alpha(j)*a*10^(-2);
end


% D)
H_0 = 1;
H_e = 1;
y1 = -a:0.01:a; % d/2 < y < d/2
y2 = a:0.01:2*a; % y > d/2
y3 = -a:0.01:-2*a; % y < -d/2
figure(2);
for i = 1:1:4
   if(mod(i,2) == 0) %Odd
       E_x1 = (-w*mu_0)/ky(i)*H_0*cos(ky(i)*y1); % d/2 < y < d/2
       E_x2 = (-w*mu_0)/alpha(i)*H_0*sin(ky(i)*a)*exp(-alpha(i)*(y2-a)); % y > d/2
       E_x3 = (-w*mu_0)/alpha(i)*H_0*sin(ky(i)*a)*exp(alpha(i)*(y3+a)); % y < -d/2
   else %even
       E_x1 = (-w*mu_0)/ky(i)*H_e*sin(ky(i)*y1); % d/2 < y < d/2
       E_x2 = (-w*mu_0)/alpha(i)*H_e*cos(ky(i)*a)*exp(-alpha(i)*(y2-a)); % y > d/2
       E_x3 = (-w*mu_0)/alpha(i)*H_e*cos(ky(i)*a)*exp(alpha(i)*(y3+a)); % y < -d/2
   end
   plot(y1,E_x1);
   hold on
   plot(y2,E_x2);
   hold on
   plot(y3,E_x3);
   grid on
   xlabel('m');
   ylabel('E_x(y)');
   title('E_x(y) for the 4 propagating modes');
end