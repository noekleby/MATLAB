function days = daysInMonth ( year, month )
    switch ( month )
    case 1
    days = 31;
    case 2
        if (isLeapYear(year)==1)
            days = 29;
        else
            days= 28;
        end
    case 3
    days = 31;
    case 4
    days = 30;
    case 5
    days = 31;
    case 6
    days = 30;
    case 7
    days = 31;
    case 8
    days = 30;
    case 9
    days = 31;
    case 10
    days = 30;
    case 11
    days = 31;
    case 12
    days = 30;
    otherwise
    days = 0;
    end
end
