niutval=100;
AntallUtval=1000;
mu=5;
sigma=2;
utvalR = normrnd(mu,sigma,niutval,AntallUtval);
%b
gjsnittR= mean(utvalR);
hist(gjsnittR);
title('Oppgave 2a');
