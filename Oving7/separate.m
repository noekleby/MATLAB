function [V1, V2] = separate( L, a )
j=1;
k=1;
for i=1:length(L)
    if L(i)>a
        V1(k) = L(i);
        k =k+1;
    else 
        V2(j) = L(i);
        j=j+1;
    end
end
disp(strrep(['V1: (' sprintf(' %d,', V1) ')'], ',)', ')'))
disp(strrep(['V2: (' sprintf(' %d,', V2) ')'], ',)', ')'))
end

