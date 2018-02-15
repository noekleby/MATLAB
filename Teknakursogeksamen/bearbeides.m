function nyrekke = bearbeides( inn, N, min_value, max_value )
    midlertidig = sort(inn);
    while true 
        for i = 2:length(midlertidig)
            if inn(i-1)==midlertidig(i)
                inn=randi([min_value, max_value], 1, N);
                inn=bearbeides(inn, N, min_value, max_value);
                break;
            end
        end
        nyrekke=inn;
        return;
    end


end

