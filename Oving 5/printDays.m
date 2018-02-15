function printDays( days )	
	for i = 1:6
	  	for j = 1:7
            if days(i,j)==0
	            fprintf('   ');
            elseif days(i,j)>9
	            fprintf('%d ',days(i,j));
            else
	            fprintf(' %d ',days(i,j));
	        end
	        
	    end
	   
	    fprintf('\n')
	    
	end
end