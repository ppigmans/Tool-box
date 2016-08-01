#!/bin/sh

echo "Welkom bij de First setup van de Service-pi toolbox"
echo "(tools zijn: Systeminfo+benodigdheden IPconfig Overscan rpi-update)"

echo "is dit een raspberry pi? (zo ja type ja, zo niet type nee, anders druk op control(ctrl) + z om te annuleren"
read x
if [ "x$x" = "xja" ] ; then
echo "Ok, we gaan de tools klaar zetten voor U."
cd ./bin
cd ./set_overscan
apt-get install gcc automake curl make python -y
make
cd ..
mv set_overscan.sh /usr/bin/overscan
chmod +x /usr/bin/overscan
cd ..
cp -r ./bin/set_overscan /usr/bin/set_overscan
chmod +x ./bin/arch
chmod +x ./bin/wifi
chmod +x ./bin/kabel
chmod +x ./bin/TBUIR
chmod +x ./bin/systeminfo
chmod +x ./bin/uninstaller.sh
chmod +x ./bin/ipconfig.sh
mkdir /usr/bin/TB
mv ./bin/arch /usr/bin/TB/
mv ./bin/wifi /usr/bin/TB/
mv ./bin/kabel /usr/bin/TB/
mv ./bin/uninstaller.sh /usr/bin/TBuninstall
mv ./bin/systeminfo /usr/bin/systeminfo
mv ./bin/ipconfig.sh /usr/bin/ipconfig
mv ./bin/TBUIR /usr/bin/TBUI
chmod +x ./bin/tc/setup.py
./bin/tc/setup.py install
sudo curl -L --output /usr/bin/rpi-update https://raw.githubusercontent.com/Hexxeh/rpi-update/master/rpi-update && sudo chmod +x /usr/bin/rpi-update
cd ..
rm -rf Tool-box
sleep 4
echo "we zijn klaar met het installeren, zodra u deze tools wil gebruiken typ dan het volgende"
echo "TBUI, hier in krijgt u een menu waar u uit de tools kan kiezen"
echo "Veel plezier!"
exit 1
fi


else
echo "installatie zonder raspberry pi onderdelen begonnen"
cd ./bin
cd ./set_overscan
apt-get install gcc automake curl make python -y
make
cd ..
mv set_overscan.sh /usr/bin/overscan
chmod +x /usr/bin/overscan
cd ..
cp -r ./bin/set_overscan /usr/bin/set_overscan
chmod +x ./bin/arch
chmod +x ./bin/wifi
chmod +x ./bin/kabel
chmod +x ./bin/TBUIR
chmod +x ./bin/systeminfo
chmod +x ./bin/uninstaller.sh
chmod +x ./bin/ipconfig.sh
mkdir /usr/bin/TB
mv ./bin/arch /usr/bin/TB/
mv ./bin/wifi /usr/bin/TB/
mv ./bin/kabel /usr/bin/TB/
mv ./bin/uninstaller.sh /usr/bin/TBuninstall
mv ./bin/systeminfo /usr/bin/systeminfo
mv ./bin/ipconfig.sh /usr/bin/ipconfig
mv ./bin/TBUIR /usr/bin/TBUI
chmod +x ./bin/tc/setup.py
./bin/tc/setup.py install
cd ..
rm -rf Tool-box
sleep 4
echo "we zijn klaar met het installeren, zodra u deze tools wil gebruiken typ dan het volgende"
echo "Tool-box, hier in krijgt u een menu waar u uit de tools kan kiezen"
echo "Veel plezier!"
exit 1
fi
