%Problem 1
%c)
function filter_coefficients = oppg1c(fc, w)

N = length(w);
n = 0:(N-1);

filter_coefficients = sin(2*pi*fc.*(n-((N-1)/2)))/(pi*(n-(N-1)/2)).*w;
end

