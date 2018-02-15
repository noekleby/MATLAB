function snitt = snittTrekkVinnRemiTap( spill )
trekkVinn=0;
trekkRemis=0;
trekkTap=0;
antallVinn=0;
antallRemis=0;
antallTap=0;
for i=1:length(spill)
    if (spill(i).utfall == 1)
        trekkVinn = trekkVinn + spill(i).trekk;
        antallVinn = antallVinn + 1;
    elseif (spill(i).utfall == 0.5)
        trekkRemis = trekkRemis + spill(i).trekk;
        antallRemis= antallRemis + 1;
    else
        trekkTap = trekkTap + spill(i).trekk;
        antallTap= antallTap + 1;
    end
end
snitt = [(trekkVinn/antallVinn), (trekkRemis/antallRemis), (trekkTap/antallTap)];

end

