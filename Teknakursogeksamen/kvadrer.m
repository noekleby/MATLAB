function kvadrater = kvadrer( list )
kvadrater = zeros(1,length(list));
    for i = 1:length(list)
        kvadrater(i) = list(i)^2;
    end 

end

