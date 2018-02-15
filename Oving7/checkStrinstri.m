function strengistreng = checkStrinstri( a,b )
n=size(a,2);
m=size(b,2);
strengistreng=-1;
for i=1:m-n+1
        if checkString(b(i:i+n-1), a)
	        strengistreng = i;
            return;
        end
end
end

