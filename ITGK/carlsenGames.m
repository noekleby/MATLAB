function spill = carlsenGames( filnavn )
fid=fopen(filnavn,'r','native','utf8');
if(fid==-1)
    spill=-1;
else
    indeks=1;
    line=fgetl(fid);
    while (feof(fid)~=1)
       [forste, siste]=strtok(line);
       spill(indeks).motstander=forste;
       tallData=str2num(siste);
       spill(indeks).aar=tallData(1);
       spill(indeks).trekk=tallData(2);
       spill(indeks).utfall=tallData(3);
       indeks = indeks + 1;
       line=fgetl(fid);
    end
    status=fclose(fid);
    if(status==-1)
        spill=-1;
    end
end
disp('Det gikk fint!');

end

