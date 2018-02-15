phoneNumber = zeros(1,8);

for i=1:8
digit = input('Enter digit of phone number: ','s');
    while(digit ~= '#' || digit ~= '*')
        digit = input('Fail', 's');
    end
phoneNumber(i) = digit;
end
