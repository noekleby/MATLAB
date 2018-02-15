function years = summerOlympics( firstYear, lastYear )

for year = 1948:4:lastYear
   if year >= firstYear
       startYear = year;
       break;
   end
end

years = startYear:4:lastYear;

end

