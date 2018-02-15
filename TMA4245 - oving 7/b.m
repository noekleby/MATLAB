% Data for Trondheim:
TRD_mean=mean(TRD); TRD_median=median(TRD);
TRD_std=std(TRD); TRD_var=var(TRD);
% Data for Bodo:
BO_mean=mean(BO); BO_median=median(BO);
BO_std=std(BO); BO_var=var(BO);
% Data for Tynset:
TY_mean=mean(TY); TY_median=median(TY);
TY_std=std(TY); TY_var=var(TY);

% Vanlige plott
plot(TRD,'b'); xlabel('Dager'); ylabel('Gjennomsnittstemperatur');
title('Trondheim'); axis([0 400 -20 25]); figure
plot(BO,'b'); xlabel('Dager'); ylabel('Gjennomsnittstemperatur');
title('Bodø'); axis([0 400 -20 25]); figure
plot(TY,'b'); xlabel('Dager'); ylabel('Gjennomsnittstemperatur');
title('Tynset'); axis([0 400 -20 25]); figure
% Histogrammer
hist(TRD); xlabel('Temperatur'); ylabel('Antall forekomster av temperatur');
title('Trondheim'); figure
hist(BO); xlabel('Temperatur'); ylabel('Antall forekomster av temperatur');
title('Bodø'); figure
hist(TY); xlabel('Temperatur'); ylabel('Antall forekomster av temperatur');
title('Tynset');