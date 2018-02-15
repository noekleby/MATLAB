function result = minesweeper(  )
    rows = input('How many rows? ');
    cols = input('How many columns? ');
    probability = input('Which mine probability? ');
    minefield = createMineField(rows, cols, probability);
    opened = zeros(rows,cols);
    mineCounts = createMineCounts(mineField);
    disp(mineField);
    while 1==1
    printMines(mineField, opened, mineCounts);
    row = input('Which row do you want to open? ');
    col = input('Which column do you want to open? ');
    opened(row,col)=1;
    if mineField(row,col)==1
        disp('Game over!');
        break;
    end
    end
end


