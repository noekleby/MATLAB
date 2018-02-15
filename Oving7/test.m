function p = test(a,b)
	p = -1;
	i = 0;
	while p < 0 && i < size(a,2)-size(b,2)+1
	    i = i+1;
	    if chkstr(a(i:size(b,2)+i-1),b)
	        p = i;
	    end
	end
end