function ukedag = getMonthStartDay( year, month )
	date = sprintf('%d-%d-01',year,month);
	if month>12 || month<1
	    ukedag=0;
    else
	    if weekday(date)==1
	        ukedag=7;
	    else
	        ukedag=weekday(date)-1;
	    end
	    
	end
end

