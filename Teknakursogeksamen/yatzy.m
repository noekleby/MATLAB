function liste = yatzy( t1,t2,t3,t4,t5 )
liste = [t1,t2,t3,t4,t5];
    if max(liste)>6 || min(liste)<1
        error('Du må velge et tall mellom 1 og 6');
    end
    liste = [t1,t2,t3,t4,t5];
    liste = sort(liste);
end

