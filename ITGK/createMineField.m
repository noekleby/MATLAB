function result = createMineField( rows, cols, probability )
    result = rand(rows, cols) < probability;
end

