function ukedag = getYearStartDay( year )
	date = sprintf('%d-%d-01',year,1);
        if weekday(date)==1
            ukedag=7;
        else
            ukedag=weekday(date)-1;
        end
end

% function day = getYearStartDay ( year )
% dag = 1 + 2 + ceil(3*2/5) + year + ceil(year/4) - ceil(year/100) + ceil(year/400) + 2;
% if (isLeapYear(year) == 1)
%     dagsnummer = (rem(dag,7));
% else
% dagsnummer = (rem(dag,7));
% end
% switch(dagsnummer)
%     case 0
%         if (year>1999)
%             day = '6';
%         else
%             day = '5';
%         end
%     case 1
%         if (year>1999)
%             day = '7';
%         else
%         day = '6';
%         end
%     case 2
%         if (year>1999)
%             day = '1';
%         else
%             day = '7';
%         end
%     case 3
%         if (year>1999)
%             day = '2';
%         else
%             day = '1';
%         end
%     case 4
%         if (year>1999)
%             day = '3';
%         else
%             day = '2';
%         end
%     case 5
%         if (year>1999)
%             day = '4';
%         else
%             day = '3';
%         end
%     case 6
%         if (year>1999)
%             day = '5';
%         else
%             day = '4';
%         end
%     case 7
%         if (year>1999)
%             day = '2';
%         else
%             day = '1';
%         end
% end
% end