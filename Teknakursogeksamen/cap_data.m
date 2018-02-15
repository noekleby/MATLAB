function result = cap_data( array, min_value, max_value )

for i=1:length(array)
    if array(i)<min_value
        array(i)=min_value;
    elseif array(i)>max_value
        array(i) = max_value;
    end
end
result = array;

end

