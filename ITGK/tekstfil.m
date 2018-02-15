nyListe = ['9489394', '39492849', '49284929', '4929493'];
indeks=0;
for i=100:-10:10
    indeks=indeks+1;
    fprintf('%d.%s.%d',indeks,nyListe(rand([indeks 4])),i);
end