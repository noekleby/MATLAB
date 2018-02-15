function list = readPolygonFile( textfile )
fid = fopen(textfile,'r');
list = [];

linje = fgetl(fid);
if fid==-1
    list=-1;
else
while linje~=-1
    [tall1, tall2] = strtok(linje,'');
    tall1=str2num(tall1);
    tall2=str2num(tall2);
    
    list = [list tall1 tall2];
    
    linje=fgetl(fid);
end
end
fclose(fid);
end

