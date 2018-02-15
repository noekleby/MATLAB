function result = generate_testdata( N, min_value, max_value )
result = randi([min_value, max_value], 1, N);
result = bearbeides(result, N, min_value, max_value);
end

