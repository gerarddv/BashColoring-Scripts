
sed_fct_coloring(){
    line=$(sed -e "s/rouge/\\\e[48;5;1mrouge\\\e[0m/g;s/vert/\\\e[48;5;2mvert\\\e[0m/g;s/jaune/\\\e[48;5;3mjaune\\\e[0m/g;s/bleu/\\\e[48;5;4mbleu\\\e[0m/g;
    s/magenta/\\\e[48;5;5mmagenta\\\e[0m/g;s/cyan/\\\e[48;5;6mcyan\\\e[0m/g;s/gris/\\\e[48;5;7mgris\\\e[0m/g;s/anthracite/\\\e[48;5;8mantrhacite\\\e[0m/g;
    s/Rouge/\\\e[48;5;1mRouge\\\e[0m/g;s/Vert/\\\e[48;5;2mVert\\\e[0m/g;s/Jaune/\\\e[48;5;3mJaune\\\e[0m/g;s/Bleu/\\\e[48;5;4mBleu\\\e[0m/g;
    s/Magenta/\\\e[48;5;5mMagenta\\\e[0m/g;s/Cyan/\\\e[48;5;6mCyan\\\e[0m/g;s/Gris/\\\e[48;5;7mGris\\\e[0m/g;s/Anthracite/\\\e[48;5;8mAntrhacite\\\e[0m/g;
    s/ROUGE/\\\e[48;5;1mROUGE\\\e[0m/g;s/VERT/\\\e[48;5;2mVERT\\\e[0m/g;s/JAUNE/\\\e[48;5;3mJAUNE\\\e[0m/g;s/BLEU/\\\e[48;5;4mBLEU\\\e[0m/g;
    s/MAGENTA/\\\e[48;5;5mMAGENTA\\\e[0m/g;s/CYAN/\\\e[48;5;6mCYAN\\\e[0m/g;s/GRIS/\\\e[48;5;7mGRIS\\\e[0m/g;s/ANTHRACITE/\\\e[48;5;8mANTRHACITE\\\e[0m/g;" <<< $1 )
    echo -e "$line ";
}

verify_file(){
    if [[ !(-f $1) ]];
    then
        exit 1;
    elif [[ !(-r $1) ]];
    then
        exit 2;
    fi
}

find_color(){
    declare -i t=$1/$2  ##taux d'occupation $1 taille element et $2 taille totales
    declare -i color=231
    declare -i cond=0
    if [ $t -eq 0 ]; then

    elif [ $t -eq 1 ]; then

    else
        while ($cond=0 && $color<256); do
            
    fi
    case

}

#if passed arguments equals 0
if [ $# -eq 0 ]; then
    ##echo "No arguments supplied, type the text to evaluate: ";
    ##User enters his text
    while read STRING; do
        if [[ $STRING =~ (*./*) ]]; then
            sed_fct_coloring "$STRING";
        fi
    done
else #get text from file passed as arguments
    for file in "$@" 
    do
        verify_file "$file"
        while read -r line; do
            sed_fct_coloring "$line";
        done < $file
    done
fi
exit 0;