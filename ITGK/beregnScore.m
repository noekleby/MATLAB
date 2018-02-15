function score = beregnScore( spill )
score=0;
antallSpill=length(spill);
for i=1:antallSpill
    score = score + spill(i).utfall;
end
score = score/antallSpill;



end

