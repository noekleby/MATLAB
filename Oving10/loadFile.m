function loadFile(filename) 
file = fopen(filename, 'r'); 
i = 1; 
linje = fgetl(file); 
data = [data deserialise_person(linje)]; 
while linje ~= -1  
disp(linje); 
disp(deserialize_person(linje)); 
data(i) = deserialize_person(linje); 
disp(data); 
linje = fgetl(file); % hent ny linje 
i = i + 1; 
end 
fclose(file); 
end

