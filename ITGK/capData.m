function liste  = capData( liste, min_value, max_value )

for i = 1:length(liste)
    if liste(i) < min_value
        liste(i) = min_value;
    elseif liste(i) > max_value
        liste(i) = max_value;
    end
    
end


end

