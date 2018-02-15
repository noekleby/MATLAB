function main_part1()
phoneNumber = zeros(1,8); % Lager vektor med alle sifferene i telefonnummeret 
Y1 = zeros(1,8); %Vektorer for henholdsvis frekvensene f1 og f2
Y2 = zeros(1,8);
signal = []; %Inneholder punktprøver for de genererte harmoniske signalene (lyd + pause)
for i = 1:8 % Løkke for hvert siffer
    phoneNumber(i) = input('Enter digit of phone number: ','s'); % Tast inn siffer som "string"

    while ( length(phoneNumber(i)) > 1) % Hvis lengden til digit > 1, sÂ er du utenfor omrÂdet digit >= '0' && digit <= '9'
        phoneNumber(i) = input( 'Invalid character! Enter digit of phone number: ','s'); % Pr¯v igjen
    end

   while( ~(phoneNumber(i) >= '0' && phoneNumber(i) <= '9') && phoneNumber(i) ~= '*' && phoneNumber(i) ~= '#') % Sjekker om den er i omrÂdet (digit >= '0' && digit <= '9' eller om digit = * eller #
       phoneNumber(i) = input('Invalid character! Enter digit of phone number: ','s'); % Pr¯v igjen
   end
   
end 
   % Sjekker hvert tilfelle med if, der F1 og F2 er frekvensene til de
   % harmoniske signalene.
   for i=1:8
       if ( phoneNumber(i) == '1' )
            F1 = 697;
            F2 = 1209;
        elseif ( phoneNumber(i) == '2' )
            F1 = 697;
            F2 = 1336;
        elseif ( phoneNumber(i) == '3' )
            F1 = 697;
            F2 = 1477;
        elseif ( phoneNumber(i) == '4' )
            F1 = 770;
            F2 = 1209;
        elseif ( phoneNumber(i) == '5' )
            F1 = 770;
            F2 = 1336;
        elseif ( phoneNumber(i) == '6' )
            F1 = 770;
            F2 = 1477;
        elseif ( phoneNumber(i) == '7' )
            F1 = 852;
            F2 = 1209;
        elseif ( phoneNumber(i) == '8' )
            F1 = 852;
            F2 = 1336;
        elseif ( phoneNumber(i) == '9' )
            F1 = 852;
            F2 = 1477;
        elseif ( phoneNumber(i) == '*' )
            F1 = 941;
            F2 = 1209;
        elseif ( phoneNumber(i) == '0' )
            F1 = 941;
            F2 = 1336;
        elseif ( phoneNumber(i) == '#' )
            F1 = 941;
            F2 = 1477;
       end % End if
    Y1(i) = F1;
    Y2(i) = F2;
   end
   for i=1:8  
    Fs = 8000; %Samplingsfrekvens
    t = 0:1/Fs:(0.2-1/Fs); % Lengde pÂ signal = 0.2s. Trekker fra 1/Fs for å få 1600 punktprøver
    tp = 0:1/Fs:(0.05-1/Fs); %Lengde på pausesignal
    
    dialSig = cos(2*pi*Y1(i)*t) + cos(2*pi*Y2(i)*t); %Punktprøver av lydsignal
    pauseSig = 0*cos(2*pi*0*tp); %Punktprøver av pausesignal
    
    signal = [signal dialSig]; %Legger pause-og lydsignal i signalvektoren
    signal = [signal pauseSig];
 
    sound(dialSig,Fs); %Spiller av de harmoniske lydene
    sound(pauseSig); %Pause

   end
   save('TestFile_3.mat','signal'); 
% Lagrer signalet i en fil med navn "TestFile_3". Bruk: 
% load('TestFile_3.mat')
% For å lagre signalet i Workspace!


end