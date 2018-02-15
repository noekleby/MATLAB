function maxi_yatzy( liste )
lengde = length(liste);
antall=0;
liste=sort(liste);
tall = 0;
    for i=1:lengde
        if sum(liste==liste(i))>=antall
            antall=sum(liste==liste(i));
            tall = liste(i);
        end
    end
    fprintf('Det ble kastet %i terninger, tallet det var mest av var %i, og det var %i stk.', lengde, tall, antall);
end

