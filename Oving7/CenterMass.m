function midtpunkt = CenterMass( stang )
	i = 1;
    masse = stang(1);
	while masse<(sum(stang)/2)
	    i = i+1;
	    masse = masse+stang(i);
	end
	midtpunkt = i-(masse-sum(stang)/2)/stang(i);
end


