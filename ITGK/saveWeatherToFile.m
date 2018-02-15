function saveWeatherToFile( temp, rain, filnavn )
fil = fopen(filnavn, 'r');
fprintf(fil,'Day | Temp | Rain \n');
fprintf(fil,'====+=====+======\n');
for i = 1: length(temp)
    fprintf(fil,'%4d %6.1f %6.1f\n',i,temp(i),rain(i));
end
fclose(fil);



end

