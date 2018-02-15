function result = insertionSort( A )
    n = length(A);
    for i=2:n
        j=1;
        while j > 1 && A(j-1)
           temp = A(j-1);
           A(j-1) = A(j);
           A(j) = temp;
           j = j-1;
        end
    end
    result = A;
end

