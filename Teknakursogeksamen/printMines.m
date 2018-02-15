function result = printMines( mineField, opened, mineCounts )
    rows = size(mineField, 1);
    cols = size(mineField, 2);
    for r=1:rows
       line = '';
       for c=1:cols
          if opened(r,c) == 1
              if mineField(r,c) == 1
                  line = [line '*'];
              else
                  line = [line num2str(mineCounts(r,c))];
              end
          else
              line = [line '#'];
          end
       end
       disp(line);
    end

end

