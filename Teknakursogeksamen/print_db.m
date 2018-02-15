function print_db( weather )
fprintf('Day | Temp | rain | humidity | wind\n');
fprintf('=======================================\n');
for i=1:length(weather);
%     fprintf('%4d', Day(i), '\n');
%     fprintf('%6d', temp(i), '\n');
%     fprintf('%6d', rain(i), '\n');
%     fprintf('%10d', humidity(i), '\n');
%     fprintf('%6d', wind(i), '\n');
    day = weather(i);
    fprintf('%4d%6d%6d%10d%6d\n',i,day.temp, day.rain, day.humidity, day.wind)
end
end

