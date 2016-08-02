#!/bin/sh

echo "Welkom bij de First setup van de Service-pi toolbox"
echo "(tools zijn: Systeminfo+benodigdheden IPconfig Overscan rpi-update)"

echo "is dit een raspberry pi? (zo ja type ja, zo niet type nee, anders druk op control(ctrl) + z om te annuleren"
read x
if [ "x$x" = "xja" ] ; then
echo "Ok, we gaan de tools klaar zetten voor U."
cd ./bin
cd ./set_overscan
apt-get install gcc automake curl make python python-tk idle python-pmw python-imaging -y
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
chmod +x ./bin/TBMenur
mkdir /usr/bin/TB
mv ./bin/arch /usr/bin/TB/
mv ./bin/wifi /usr/bin/TB/
mv ./bin/kabel /usr/bin/TB/
mv ./bin/uninstaller.sh /usr/bin/TBuninstall
mv ./bin/systeminfo /usr/bin/systeminfo
mv ./bin/ipconfig.sh /usr/bin/ipconfig
mv ./bin/TBUIR /usr/bin/TBUI
mv ./bin/TBMenur /usr/bin/TBMenu
wget https://pypi.python.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz
tar xf termcolor-1.1.0.tar.gz
./termcolor-1.1.0/setup.py install
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
apt-get install gcc automake curl make python python-tk idle python-pmw python-imaging -y
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
chmod +x ./bin/TBMenu
mkdir /usr/bin/TB
mv ./bin/arch /usr/bin/TB/
mv ./bin/wifi /usr/bin/TB/
mv ./bin/kabel /usr/bin/TB/
mv ./bin/uninstaller.sh /usr/bin/TBuninstall
mv ./bin/systeminfo /usr/bin/systeminfo
mv ./bin/ipconfig.sh /usr/bin/ipconfig
mv ./bin/TBUI /usr/bin/TBUI
mv ./bin/TBMenu /usr/bin/TBMenu
wget https://pypi.python.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz
tar xf termcolor-1.1.0.tar.gz
./termcolor-1.1.0/setup.py install
cd ..
rm -rf Tool-box
sleep 4
echo "we zijn klaar met het installeren, zodra u deze tools wil gebruiken typ dan het volgende"
echo "Tool-box, hier in krijgt u een menu waar u uit de tools kan kiezen"
echo "Veel plezier!"
exit 1
fi
