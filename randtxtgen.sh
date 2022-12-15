write_color(){
    case $1 in
        1)
            echo "rouge " > $2;;
        2)
            echo  "Vert "> $2;;
        3)
            echo "CyAn "> $2;;
        4)
            echo "Magenta " > $2;;
        5)
            echo "Jaune "> $2;;
        6)
            echo "bleu "> $2;;
        7)
            echo "grIs "> $2;;
        8)
            echo "anthractite "> $2;;
        *)
            echo "randwrd "> $2;;
    esac
}

GENERAL_FILE_NAME="text_"
echo -n "enter number of files to create : " 
read nbfiles
while [[ $nbfiles -ne 0 ]];
do
    output_file=$GENERAL_FILE_NAME${nbfiles}".txt"
    cat > $output_file
    echo -n "enter number of words to write : " 
    read nbwords
    while [[ $nbwords -ne 0 ]];
    do 
        write_color "$nbwords" "$output_file"
        (( nbwords -= 1 ))
    done
    (( nbfiles -= 1 ))
done
