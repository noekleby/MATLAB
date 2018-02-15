% Definerer programinput
vareliste = [ 'Vare 1 '; 'Vare 2 '; 'Vare 3 ' ];
prisliste = [ 100 , 200 , 160 ];
% Definerer konstant verdi
mva = 0.25;

% Regn ut MVA for hver vare
vareMVA = prisliste.*mva;

% Regn ut totalpris for hver vare ( pris + mva)
prisTotal = prisliste + vareMVA;

% Regn ut total summen for MVA
totalMVA = sum(vareMVA);

% Regn ut totalt beloep aa betale
total = sum(prisTotal);

% Skriv ut kviteringen
fprintf (' -------------------------------------\n');
fprintf ('Hva \t \t Pris \t MVA \t Total \n');
for i = 1 : size ( vareliste , 1)
fprintf ('%s\t\t%d\t%d\t%d\n', vareliste (i ,:) , prisliste (i), vareMVA (i), prisTotal (i));
end
fprintf ('-------------------------------------\n\n');
fprintf ('Total  MVA\t\t\t%d\n', totalMVA );
fprintf ('Total \t\t\t\t%d\n\n', total );
fprintf ('\t Takk  for en  hyggelig \n\t kalkulasjon !\n')
fprintf (' -------------------------------------\n');