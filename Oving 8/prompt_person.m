function person = prompt_person( )
person.name = input('Hva heter du? ','s');
person.date_of_birth.day = input('Hvilken dato er du f�dt (dag)? ');
person.date_of_birth.month = input('Hvilken m�ned er du f�dt? ');
person.date_of_birth.year = input('Hvilket �r er du f�dt? ');
person.phone = input('Hva er telefonnummeret ditt? ');
end



% navn = input('Hva heter du?', 's');
% dato = input('Hvilken dato er du f�dt?');
% month = input('Hvilken m�ned er du f�dt?');
% year = input('Hvilket �r er du f�dt?');
% phone = input('Hva er telefonnummeret ditt?');
% date_of_birth = struct('dato ', dato , 'm�ned ', month , '�r ', year );
% bruker = struct('navn ', navn , ' date_of_birth ', date_of_birth, 'telefon', phone);