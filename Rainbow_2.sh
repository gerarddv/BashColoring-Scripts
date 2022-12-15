ze=0;
for i in "$@"
do
    if [[ $i -gt $ze ]]; then
        echo -e "\e[48;5;1"$i"m$i\e[0m";
    elif [[ $i -le $ze ]]; then
        echo "$i";
    else 
        echo "$i";
    fi
done
