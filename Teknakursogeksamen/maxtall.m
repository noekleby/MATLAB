function tall = maxtall( list )
lengde = length(list);
tall = list(1);
for i = 2:lengde
    if tall<list(i)
        tall = list(i);
    end
end

end

