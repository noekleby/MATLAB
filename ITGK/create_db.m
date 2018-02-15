function list = create_db( temp,rain,humidity,wind )

for i=1:length(rain)
day = struct('temp', temp(i), 'humidity', humidity(i), 'rain', rain(i), 'wind', wind(i));
list(i)=day;
end
end

