#!/bin/sh

echo Welkom bij de First setup van de Service-pi toolbox
echo "(tools zijn: Systeminfo+benodigdheden IPconfig Overscan rpi-update)"

echo "als u alle tools (inclusief raspberry tools) wilt verwijderen typ 1,  als u de tools zonder raspberry tools wilt verwijderen typ 2"
read x
if [ "x$x" = "x1" ] ; then
echo Ok, we gaan de tools verwijderen voor U.
rm -rf /usr/bin/overscan
rm -rf /usr/bin/systeminfo
rm -rf /usr/bin/set_overscan
rm -rf /usr/bin/systeminfo
rm -rf /usr/bin/ipconfig
rm -rf /usr/bin/rpi-update
rm -rf /usr/bin/TB
rm -rf /usr/bin/TBUI
rm -rf /usr/bin/TBuninstall

sleep 4
echo "we zijn klaar met het Verwijderen :("
echo
echo "tot ziens :("
echo
exit 1
fi

if [ "x$x" = "x2" ]; then
echo Ok, we gaan de tools verwijderen voor U.
rm -rf /usr/bin/overscan
rm -rf /usr/bin/systeminfo
rm -rf /usr/bin/set_overscan
rm -rf /usr/bin/systeminfo
rm -rf /usr/bin/ipconfig
rm -rf /usr/bin/TB
rm -rf /usr/bin/TBUI
rm -rf /usr/bin/TBuninstall
sleep 4
echo "we zijn klaar met het Verwijderen :("
echo
echo "tot ziens :("
echo
exit 1
fi
