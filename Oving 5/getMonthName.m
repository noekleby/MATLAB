function month = getMonthName ( monthnumber )
    switch ( monthnumber )
    case 1
    month = 'Januar';
    case 2
    month = 'Februar';
    case 3
    month = 'Mars';
    case 4
    month = 'April';
    case 5
    month = 'Mai';
    case 6
    month = 'Juni';
    case 7
    month = 'Juli';
    case 8
    month = 'August';
    case 9
    month = 'September';
    case 10
    month = 'Oktober';
    case 11
    month = 'November';
    case 12
    month = 'Desember';
    otherwise
    month = 'Ingen måned';
    end
end
