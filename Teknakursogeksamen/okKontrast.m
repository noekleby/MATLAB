function bildeUt = okKontrast( bildeInn )
minPiksel = min(min(bildeInn));
maksPiksel = max(max(bildeInn));
%Konverterer min og makspiksel til double
minPiksel= cast(minPiksel, 'double');
maksPiksel= cast(maksPiksel, 'double');

strekkfaktor=255/(maksPiksel-minPiksel);
bildeUt = (bildeInn - minPiksel)*strekkfaktor;


end

