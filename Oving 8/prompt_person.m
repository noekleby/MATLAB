function person = prompt_person( )
person.name = input('Hva heter du? ','s');
person.date_of_birth.day = input('Hvilken dato er du født (dag)? ');
person.date_of_birth.month = input('Hvilken måned er du født? ');
person.date_of_birth.year = input('Hvilket år er du født? ');
person.phone = input('Hva er telefonnummeret ditt? ');
end



% navn = input('Hva heter du?', 's');
% dato = input('Hvilken dato er du født?');
% month = input('Hvilken måned er du født?');
% year = input('Hvilket år er du født?');
% phone = input('Hva er telefonnummeret ditt?');
% date_of_birth = struct('dato ', dato , 'måned ', month , 'år ', year );
% bruker = struct('navn ', navn , ' date_of_birth ', date_of_birth, 'telefon', phone);