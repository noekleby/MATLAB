function likestrenger = checkString( a,b )
likestrenger = true;
if size(a,2) == size(b,2)
    for i=1:size(b,2)
        if a(i) ~= b(i)
            likestrenger = false;
        end
    end
else
    likestrenger = false;
end
end

