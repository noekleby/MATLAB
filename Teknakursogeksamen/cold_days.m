function days = cold_days( list )
days=0;
for i=1:length(list)
    if list(i)<0
        days = days + 1;
    end
end

end

