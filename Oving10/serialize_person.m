function serialize_person( person )
dato = serialize_dato(person.dato);
fprintf(person.navn,'#',dato,'#',int2str(person.nummer));
end

