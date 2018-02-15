function wordList = enterWords(  )
wordList=[];
word=input('Enter word[Press Enter to quit]','s');
i=1;
while  strcmp(word,'') == false
    wordList(i) = word;
    i = i+1;
    word=input('Enter word[Press Enter to quit]','s');
end
end

