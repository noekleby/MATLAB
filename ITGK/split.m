function [L1, L2] = split( liste, n )

L1 = liste(1:n);
L2 = liste((n+1):end);

end

