figure
niutval=100;
AntallUtval=1000;
pauseint=0.05;
mu=5;
sigma=2;
utvalR=normrnd(mu,sigma, niutval,AntallUtval);
gjsnittR= mean(utvalR);
hist(gjsnittR);
title('Oppgave 2b)');