function bruker = batch_register_persons()
    answer = 'ja';
    i=1;
	while strcmp(answer ,'ja')
        i=i+1;
	    bruker(i)=prompt_person;
	    answer = input('Skal du registrere flere personer (ja/nei)? ','s');
	end
end