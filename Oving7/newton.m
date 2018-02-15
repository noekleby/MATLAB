function nullpunkt = newton( funksjon, derivert, x0, feil, iterasjoner )
x = x0;
for i = 1:iterasjoner
x = x - (funksjon(x)/derivert(x));
end
if abs(funksjon(x))<=feil
	    nullpunkt = x;
    else
	    nullpunkt = false;
end
end


