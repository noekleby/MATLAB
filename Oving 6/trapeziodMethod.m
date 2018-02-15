function area = trapeziodMethod( start, stop, n, fn )
x = start:stop/n:stop;
y = fn(x);
area = trapz(x,y);
end

% h = abs(stop-start)/n;
% A = 0;
% for i = start:h:stop-h
% 	  a = fn(i);
% 	  b = fn(i+h);
% 	  A = A + trapezoidArea(a,b,h);
% end