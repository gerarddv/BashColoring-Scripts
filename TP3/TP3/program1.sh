 
Green='\033[0;32m' 
RED='\033[0;31m'
NC='\033[0m' # No Color  
for FILE1 in programs/*
do
   #entrée longuecd tes
   read -p "press any key to test $FILE1 with all test files"
   echo "---------------------------------------------------------------------------------------------------------------------------------------------------"
   for FILE in test/*
   do
      if diff $FILE ./test/bonparanthese.txt || diff $FILE ./test/entrevide.txt
      then
         echo "Bon parenthesage" >resultat_attendu
         echo "execution pour $FILE, resultat attendu = Bon parenthesage"
      else
         echo "Mauvais parenthesage" >resultat_attendu
         echo "execution pour $FILE, resultat attendu = Mauvais parenthesage"
      fi
   $FILE1 <$FILE >resultat
   
   if diff resultat resultat_attendu
   then
      echo "programme $FILE1 fonctionne correctement" >> bonprogramme
      echo -e ${Green}OK${NC}
   else
      echo "programme $FILE1 fonctionne incorrectement" >> mauvaisprogramme
      echo -e ${RED}XXXX${NC}
   fi
   done
done