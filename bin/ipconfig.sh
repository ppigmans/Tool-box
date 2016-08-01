#!/bin/bash
# init

#function pause(){
#   read -p "$*"
#}


rd=$(tput setaf 1) # Red/Rood
gr=$(tput setaf 2) # Green/Groen
gl=$(tput setaf 3) # Yellow/Geel
bl=$(tput setaf 4) # Blue/Blauw
pa=$(tput setaf 5) # Purple/Paars
cy=$(tput setaf 6) # Cyan/Cyaan
wi=$(tput setaf 7) # White/Wit
rst=$(tput sgr0) # Text reset.
kabel=$( bash /usr/bin/TB/kabel )
wifi=$( bash /usr/bin/TB/wifi )

clear

read -p "Toets ${rd}1$rst voor het IP van uw ${gr}KABEL$rst aansluiting

Toets ${rd}2$rst voor het IP van uw ${gr}WIFI$rst aansluting

Druk op een willekeurige ${rd}Toets$rst voor ${gr}Afsluiten$rst " ans;

echo

case $ans in
   1)    echo "U zit aangesloten via kabel, uw ip is: "${gr}$kabel ${rst} && echo &&  echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} && echo && read -n1 -r -p "Press any key to continue..." key && echo ;;
   2)    echo "U zit aangesloten via WIFI. Uw IP is: "${gr}$wifi ${rst} && echo && echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} &&  echo && read -n1 -r -p "Press any key to continue..." key  && echo ;;
   *)	 echo ${rd}"Afsluiten"$rst && echo && echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} && echo && read -n1 -r -p "Press any key to continue..." key && echo;;
esac



