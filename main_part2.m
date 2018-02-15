function main_part2(signal)
F = [697 770 852 941 1209 1336 1477]; %Tabell med filterfrekvenser
Fs = 8000; %Samplingsfrekvensen
frequencies = []; %Tabell med frekvensinnhold i signal

numLength = Fs*0.2; %Lengden til et tall
pause = Fs*0.05; %Lengde til pausen
totLength = numLength+pause; %Lengde av tall + pause summert

for i = 0:7 %Itererer over signalet
   start = i*totLength+1;
   stop = i*totLength+numLength;
   
   tone = signal(start:stop); %Henter ut tostemt signal
   convLength = 0:80; %Filterlengde
   
   for f = 1:7 
       h = cos(2*pi*F(f)*(convLength)./Fs);
       y = 2*conv(h,tone)/(length(convLength));
       %Henter ut hver enkelt filterfrekvens og utfører foldning med det
       %tostemte signalet. Bruker ligning (3) fra oppgavebeskrivelsen.
       if (max(y)>0.5)
           frequencies = [frequencies F(f)]; 
           %Ved største verdi over 0.9 legges frekvensen inn i
           %frekvensinnholdtabellen.
       end
           
    end
end

numbers = []; %Inneholder det dekodede signalet.

for j=1:2:16
   sum = frequencies(j)+frequencies(j+1); 
    %Summerer to og to frekvenser for å finne korresponderende tall eller
    %symbol.
   if(sum == 1906)
       numbers = [numbers '1'];
   elseif(sum==2033)
       numbers = [numbers '2'];
   elseif(sum==2174)
       numbers = [numbers '3'];
   elseif(sum==1979)
       numbers = [numbers '4'];
   elseif(sum==2106)
       numbers = [numbers '5'];
   elseif(sum==2247)
       numbers = [numbers '6'];
   elseif(sum==2061)
       numbers = [numbers '7'];
   elseif(sum==2188)
       numbers = [numbers '8'];
   elseif(sum==2329)
       numbers = [numbers '9'];
   elseif(sum==2150)
       numbers = [numbers '*'];
   elseif(sum==2277)
       numbers = [numbers '0'];
   elseif(sum==2418)
       numbers = [numbers '#'];
   end
   
end

disp('Dekodet nummer: ');
disp(numbers);

t = 0:(1600-1); %1600 punktprøver 
for i = 1:7
    h = (2/length(t))*cos(t*2*pi*F(i)/Fs);
    [H W] = freqz(h,1,length(t)); %Finner frekvensresponsen 
    plot(W/(2*pi), abs(H), 'g'); %Plotter amplituderespons med normalisert frekvens
    axis([0 0.25 0 1]);
    ylabel('|H(\omega)|')
    xlabel('Normalisert frekvens, f/Fs')
    hold on
end
end
