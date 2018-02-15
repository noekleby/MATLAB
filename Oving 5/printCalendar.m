function calendar = printCalendar(year, month)
	monthName = getMonthName(month);
	days = getCalendar(year, month);
	
	fprintf('\n   %s ',monthName)
	fprintf('%d\n',year);
	fprintf('ma ti on to fr lø sø\n');
	
	printDays( days );
end