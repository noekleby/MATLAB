function result = createMineCounts(mineField)
    rows = size(mineField, 1);
    cols = size(mineField, 2);
    mineCounts = zeros(rows,cols);
    mineFieldWithBorder = zeros(rows + 2, cols + 2);
    mineFieldWithBorder(2 : rows + 1, 2: cols + 1) = mineField;
    for r = 2: rows + 1
        for c = 2 : cols + 1
            mineCount = sum(sum(mineFieldWithBorder(r-1:r+1,C-1:c+1)));
            mineCounts(r-1,c-1)=mineCount;
        end
    end
    result = mineCounts;
end

