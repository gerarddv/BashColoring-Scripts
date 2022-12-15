for file in $(ls -1)
do
    if [[ -h $file ]]; then 
        echo -e "\e[48;5;3m$file\e[0m";
    elif [[ -d $file ]]; then
        echo -e "\e[48;5;1m$file\e[0m";
    elif [[ -f $file ]]; then
        echo -e "\e[48;5;2m$file\e[0m";
    fi
done