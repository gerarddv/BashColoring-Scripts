#set -x      #detail de tout ce qui se passe

for FILE in $PWD/*          #test all files
do                      
    echo $(stat $FILE | grep -e 'File*\|Access: (*)*')
done