#!/bin/bash

# Luckfox Pico Offline Mode, Auto Shutdown & C++

# _____  _____  _____                 
#|  __ \\|  __ \\|  __ \\
#| |__) | |__) | |__) |_      ___ __
#|  ___/|  ___/|  ___/\\ \\ /\\ / / '_ \\
#| |    | |    | |     \\ V  V /| | | |
#|_|    |_|    |_|      \\_/\\_/ |_| |_| 
#https://github.com/TheOfficialFloW/PPPwn

echo -e ''
echo -e '\033[37mPPPwn by            : FloW\033[0m'
echo -e '\033[37mGoldhen by          : SiSTR0\033[0m'
echo -e '\033[37mHen by              : EchoStretch and BestPig\033[0m'
echo -e '\033[37mC++ Port            : xfangfang\033[0m'
echo -e '\033[37mLuckfox Pico by     : joe97tab\033[0m'
echo -e ''
echo -e '\r\n\033[31mPress Ctrl+C anytime to exit this script\033[0m'

sudo systemctl stop pppwn

if [ -f /home/PPPwn/PPPwnL.tar ] ; then
sudo tar -xf /home/PPPwn/PPPwnL.tar -C /home/
sudo rm /home/PPPwn/PPPwnL.tar
fi

while true; do
read -p "$(printf '\r\n\033[37mWould you like to change the firmware version being used, the default is 11.00\r\n\r\n\033[37m(y|n)?: \033[0m')" fwset
case $fwset in
[Yy]* ) 
while true; do
read -p  "$(printf '\r\n\033[37mEnter the firmware version [ 7.00 | 7.01 | 7.02 | 7.50 | 7.51 | 7.55 | 8.00 | 8.01 | 8.03 | 8.50 | 8.52 | 9.00 | 9.03 | 9.04 | 9.50 | 9.51 | 9.60 | 10.00 | 10.01 | 10.50 | 10.70 | 10.71 | 11.00 ]: \033[0m')" FWV
case $FWV in
"" ) 
 echo -e '\r\n\033[31mCannot be empty!\033[0m';;
 * )  
if grep -q '^[0-9.]*$' <<<$FWV ; then 

if [[ ! "$FWV" =~ ^("7.00"|"7.01"|"7.02"|"7.50"|"7.51"|"7.55"|"8.00"|"8.01"|"8.03"|"8.50"|"8.52"|"9.00"|"9.03"|"9.04"|"9.50"|"9.51"|"9.60"|"10.00"|"10.01"|"10.50"|"10.70"|"10.71"|"11.00")$ ]]  ; then
echo -e '\033[31mThe version must be [ 7.00 | 7.01 | 7.02 | 7.50 | 7.51 | 7.55 | 8.00 | 8.01 | 8.03 | 8.50 | 8.52 | 9.00 | 9.03 | 9.04 | 9.50 | 9.51 | 9.60 | 10.00 | 10.01 | 10.50 | 10.70 | 10.71 | 11.00 ]\033[0m';
else 
break;
fi
else 
echo -e '\r\n\033[31mThe version must only contain alphanumeric characters\033[0m';
fi
esac
done
echo -e '\r\n\033[33mYou are using '$FWV'\033[0m'
break;;
[Nn]* ) 
echo -e '\r\n\033[32mUsing the default setting: 11.00\033[0m'
FWV="11.00"
break;;
* ) echo -e '\r\n\033[31mPlease answer y or n\033[0m';;
esac
done

sudo cp /home/PPPwn/stage1/stage1_${FWV//.}.bin /home/PPPwn/stage1.bin

echo -e ''
echo -e '\033[37ma ) GoldHEN\033[0m'
echo -e '\033[37mb ) HEN\033[0m'
echo -e '\033[37mc ) TheOfficialFloW (No Homebrew Enable)\033[0m'
nostage2=true
while $nostage2; do
while true; do
read -p "$(printf '\r\n\033[37mPlease enter your choice for jailbreak method\r\n\r\n\033[37m(a|b|c)?: \033[0m')" s2method
case $s2method in
[Aa]* ) 
if [ -f /home/PPPwn/stage2/goldhen/stage2_${FWV//.}.bin ] ; then
sudo cp /home/PPPwn/stage2/goldhen/stage2_${FWV//.}.bin /home/PPPwn/stage2.bin
nostage2=false
echo -e '\r\n\033[32mGoldHEN is being used\033[0m'
if [[ $FWV == "9.50" ]] || [[ $FWV == "9.51" ]] ;then
echo -e '\r\n\033[33mGoldHEN may not support, please test it\033[0m'
fi
else
echo -e '\r\n\033[31mGoldHEN not support\033[0m'
fi
break;;
[Bb]* ) 
if [ -f /home/PPPwn/stage2/vtxhen/stage2_${FWV//.}.bin ] ; then
sudo cp /home/PPPwn/stage2/vtxhen/stage2_${FWV//.}.bin /home/PPPwn/stage2.bin
nostage2=false
echo -e '\r\n\033[32mHEN is being used\033[0m'
else
echo -e '\r\n\033[31mHEN not support\033[0m'
fi
break;;
[Cc]* ) 
sudo cp /home/PPPwn/stage2/TheOfficialFloW/stage2_${FWV//.}.bin /home/PPPwn/stage2.bin
nostage2=false
echo -e '\r\n\033[33mTheOfficialFloW is being used\033[0m'
break;;
* ) echo -e '\r\n\033[31mPlease answer a or b or c\033[0m';;
esac
done
done

echo -e '\r\n\033[37mIPv6 slower than IPv4, no need to using IPv6 if pwn work\033[0m'
while true; do
read -p "$(printf '\r\n\033[37mAre you using IPv6 for pwn, it will improve cursed PS4\r\n\r\n\033[37m(y|n)?: \033[0m')" useipv
case $useipv in
[Yy]* ) 
CPPBIN="pppwn7ipv6"
IPV6STATE="true"
echo -e '\r\n\033[32mIPv6 is being used\033[0m'
break;;
[Nn]* ) 
echo -e '\r\n\033[33mIPv4 is being used\033[0m'
CPPBIN="pppwn7ipv4"
IPV6STATE="false"
break;;
* ) echo -e '\r\n\033[31mPlease answer y or n\033[0m';;
esac
done

USEV1CONFIG=true
if [ $IPV6STATE = false ] ; then
while true; do
echo -e '\r\n\033[37mIPv4 Official v1 run faster but may less stability\033[0m'
read -p "$(printf '\r\n\033[37mDo you want to run Official IPv4 v1 (y) or Lastest IPv4 (n)\r\n\r\n\033[37m(y|n)?: \033[0m')" useipv4v1
case $useipv4v1 in
[Yy]* ) 
CPPBIN="pppwn7ipv4v1"
USEV1CONFIG=false
XFNW=""
echo -e '\r\n\033[32mIPv4 Official v1 is being used\033[0m'
break;;
[Nn]* ) 
USEV1CONFIG=true
echo -e '\r\n\033[33mIPv4 Lastest is being used\033[0m'
break;;
* ) echo -e '\r\n\033[31mPlease answer y or n\033[0m';;
esac
done
fi

if [ $USEV1CONFIG = true ] || [ $IPV6STATE = true ] ; then
echo -e '\r\n\033[37mDont wait one more PADI before starting the exploit\033[0m'
echo -e '\033[37mBy default, will wait for two PADI request, according to TheOfficialFloW this helps to improve stability but slow pwn process\033[0m'
while true; do
read -p "$(printf '\r\n\033[37mDo you want to using wait two PADI, the default is enable\r\n\r\n\033[37m(y|n)?: \033[0m')" wnp
case $wnp in
[Yy]* ) 
echo -e '\r\n\033[33mWait two PADI\033[0m'
XFNW=""
break;;
[Nn]* ) 
echo -e '\r\n\033[32mDont wait one more PADI\033[0m'
XFNW="--no-wait-padi"
break;;
* ) echo -e '\r\n\033[31mPlease answer y or n\033[0m';;
esac
done
fi

if [[ ${useipv4v1,,} == "y" ]] ; then
echo '#!/bin/bash
while [ true ]
do
while read -r stdo ; 
do
if [[ $stdo  == "[+] Done!" ]] ;then
sleep 6
sudo ip link set eth0 down
#sudo poweroff
fi
done < <(timeout 5m sudo /home/PPPwn/'$CPPBIN' --interface eth0 --fw '${FWV//.}' --stage1 "/home/PPPwn/stage1.bin" --stage2 "/home/PPPwn/stage2.bin")
sudo ip link set eth0 down
sleep 2
sudo ip link set eth0 up
#add count if count=5 then exit 0
done' | sudo tee /home/PPPwn/runl.sh
else
echo '#!/bin/bash
sudo ip link set eth0 down
sleep 2
sudo ip link set eth0 up
while [ true ]
do
while read -r stdo ; 
do
if [[ $stdo  == "[+] Done!" ]] ;then
sleep 6
sudo ip link set eth0 down
#sudo poweroff
fi
done < <(timeout 5m sudo /home/PPPwn/'$CPPBIN' --interface eth0 --fw '${FWV//.}' --stage1 "/home/PPPwn/stage1.bin" --stage2 "/home/PPPwn/stage2.bin" '$XFNW')
sudo ip link set eth0 down
sleep 2
sudo ip link set eth0 up
#add count if count=5 then exit 0
done' | sudo tee /home/PPPwn/runl.sh
fi

#sudo sed -i 's^sudo bash /home/PPPwn/runl.sh \&^^g' /etc/rc.local
echo '[Service]
WorkingDirectory=/home/PPPwn
ExecStart=/home/PPPwn/runl.sh
Restart=never
User=root
Group=root
Environment=NODE_ENV=production
[Install]
WantedBy=multi-user.target' | sudo tee /etc/systemd/system/pppwn.service
sudo chmod u+rwx /home/PPPwn/*
sudo chmod u+rwx /etc/systemd/system/pppwn.service

if [ -f /home/speedup.txt ] ; then
echo -e '\r\n\033[32mSpeed up already installed\033[0m'
else
echo 'This is a flag file, was generated by installer, dont delete it' | sudo tee /home/speedup.txt
#add speed up code
fi

sudo systemctl enable pppwn
sudo systemctl start pppwn
echo -e '\033[37mInstall complete\033[0m'