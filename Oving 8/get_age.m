function alder = get_age( person )
[Y,M,D] = datevec(now);
alder = Y-person.date_of_birth.year-1;
if M < person.date_of_birth.month || ( M == person.date_of_birth.month && person.date_of_birth.day > D)
 alder = alder - 1;
end
end

% if person.date_of_birth.month <= M
% 	    if person.date_of_birth.month == M && person.date_of_birth.day > D
% 	    else
% 	        age = age+1;
% 	    end
% 	end