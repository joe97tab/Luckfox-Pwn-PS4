#!/bin/bash

# Luckfox Pico Offline Mode, Auto Shutdown & C++

# _____  _____  _____                 
#|  __ \\|  __ \\|  __ \\
#| |__) | |__) | |__) |_      ___ __
#|  ___/|  ___/|  ___/\\ \\ /\\ / / '_ \\
#| |    | |    | |     \\ V  V /| | | |
#|_|    |_|    |_|      \\_/\\_/ |_| |_| 
#https://github.com/TheOfficialFloW/PPPwn

sudo systemctl stop pppwn

if [ -f /home/PPPwnL.txt ] ; then
if [ -f /home/PPPwn/PPPwnL.tar ] ; then
sudo tar -xf /home/PPPwn/PPPwnL.tar -C /home/
sudo rm /home/PPPwn/PPPwnL.tar
echo -e '\r\n\033[32mUpdate Luckfox PPPwn\033[0m'
else
echo -e '\r\n\033[32mLuckfox PPPwn already installed\033[0m'
echo -e '\r\n\033[32mReconfig Luckfox PPPwn\033[0m'
fi
else
if [ -f /home/PPPwn/PPPwnL.tar ] ; then
sudo tar -xf /home/PPPwn/PPPwnL.tar -C /home/
sudo rm /home/PPPwn/PPPwnL.tar
else
echo -e '\r\n\033[31mInstall file not found\033[0m'
exit 1
fi
fi

echo -e ''
echo -e '\033[37mPPPwn by            : FloW\033[0m'
echo -e '\033[37mGoldhen by          : SiSTR0\033[0m'
echo -e '\033[37mHen by              : EchoStretch and BestPig\033[0m'
echo -e '\033[37mC++ Port            : xfangfang\033[0m'
echo -e '\033[37mStooged binary      : Stooged\033[0m'
echo -e '\033[37mLuckfox Pico by     : joe97tab\033[0m'
echo -e ''
echo -e '\r\n\033[31mPress Ctrl+C anytime to exit this script\033[0m'

echo -e ''
echo -e '\033[37mA ) C++ V1 support IPv4 Only (Fastest speed)\033[0m'
echo -e '\033[37mB ) C++ from stooged complied\033[0m'
echo -e '\033[37mC ) C++ Lastest from xfangfang (Default)\033[0m'
while true; do
read -p "$(printf '\r\n\033[37mPlease enter your choice for C++ method (cursed PS4 should select B or C\r\n\r\n\033[37m(A|B|C)?: \033[0m')" cppchoice
case $cppchoice in
[Aa]* ) 
CPPBIN="pppwn7v1"
echo -e '\r\n\033[33mC++ V1 IPv4 Only from xfangfang being used\033[0m'
break;;
[Bb]* ) 
CPPBIN="pppwn7"
echo -e '\r\n\033[33mC++ from stooged complied is being used\033[0m'
break;;
[Cc]* )
CPPBIN="pppwn7ipv6"
echo -e '\r\n\033[32mC++ Lastest from xfangfang is being used\033[0m'
break;;
* ) echo -e '\r\n\033[31mPlease answer A or B or C\033[0m';;
esac
done

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
echo -e '\033[37mA ) GoldHEN (FW 9.00, 9.60, 10.00, 10.01, 11.00)\033[0m'
echo -e '\033[37mB ) HEN (FW 7.00-11.00)\033[0m'
echo -e '\033[37mC ) TheOfficialFloW (No Homebrew Enable) (FW 7.00-11.00)\033[0m'
echo -e '\033[37mD ) HEN by BestPig (FW 10.50 Only)\033[0m'
nostage2=true
while $nostage2; do
while true; do
read -p "$(printf '\r\n\033[37mPlease enter your choice for jailbreak method\r\n\r\n\033[37m(a|b|c|d)?: \033[0m')" s2method
case $s2method in
[Aa]* ) 
if [ -f /home/PPPwn/stage2/goldhen/stage2_${FWV//.}.bin ] ; then
sudo cp /home/PPPwn/stage2/goldhen/stage2_${FWV//.}.bin /home/PPPwn/stage2.bin
nostage2=false
echo -e '\r\n\033[32mGoldHEN is being used\033[0m'
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
[Dd]* ) 
if [ -f /home/PPPwn/stage2/bestpig/stage2_${FWV//.}.bin ] ; then
sudo cp /home/PPPwn/stage2/bestpig/stage2_${FWV//.}.bin /home/PPPwn/stage2.bin
nostage2=false
echo -e '\r\n\033[32mHEN by BestPig is being used\033[0m'
else
echo -e '\r\n\033[31mHEN by BestPig not support\033[0m'
fi
break;;
* ) echo -e '\r\n\033[31mPlease answer a or b or c or d\033[0m';;
esac
done
done

if [[ ${cppchoice,,} == "a" ]] ; then
PPPwnPS4="$CPPBIN --interface eth0 --fw "${FWV//.}" --stage1 /home/PPPwn/stage1.bin --stage2 /home/PPPwn/stage2.bin"
else
echo -e '\r\n\033[37mIPv6 slower than IPv4, no need to using IPv6 if pwn work\033[0m'
while true; do
read -p "$(printf '\r\n\033[37mAre you using IPv6 for pwn, it will improve cursed PS4\r\n\r\n\033[37m(y|n)?: \033[0m')" useipv6
case $useipv6 in
[Yy]* )
if [[ ${cppchoice,,} == "c" ]]; then CPPBIN="pppwn7ipv6"; fi
XFIP="fe80::9f9f:41ff:9f9f:41ff"
echo -e '\r\n\033[32mIPv6 is being used\033[0m'
break;;
[Nn]* )
if [[ ${cppchoice,,} == "c" ]]; then CPPBIN="pppwn7ipv4"; fi
XFIP="fe80::4141:4141:4141:4141"
echo -e '\r\n\033[33mIPv4 is being used\033[0m'
break;;
* ) echo -e '\r\n\033[31mPlease answer y or n\033[0m';;
esac
done

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

if [[ ${cppchoice,,} == "b" ]] ; then
if [[ ${s2method,,} == "a" ]] ; then
XFGH="-gh"
else
XFGH=""
fi
PPPwnPS4="$CPPBIN --interface eth0 --fw "${FWV//.}" --ipv $XFIP --wait-after-pin 1 --groom-delay 4 --buffer-size 0 $XFNW $XFGH"
else
PPPwnPS4="$CPPBIN --interface eth0 --fw "${FWV//.}" --stage1 /home/PPPwn/stage1.bin --stage2 /home/PPPwn/stage2.bin $XFNW"
fi
fi

while true; do
read -p "$(printf '\r\n\033[37mWould you like to change the time delay before pppwn to start, the default is 0 (second)\r\n\033[37m(Y|N)?: \033[0m')" delayc
case $delayc in
[Yy]* ) 
while true; do
read -p  "$(printf '\r\n\033[37mEnter the timeout value [0 - 15]: \033[0m')" DELAYS
case $DELAYS in
"" ) 
echo -e '\r\n\033[31mCannot be empty!\033[0m';;
* )  
if grep -q '^[0-9]*$' <<<$DELAYS ; then
if [[ ! "$DELAYS" =~ ^("0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"10"|"11"|"12"|"13"|"14"|"15")$ ]]  ; then
echo -e '\r\n\033[31mThe value must be between 0 and 15\033[0m';
else 
break;
fi
else 
echo -e '\r\n\033[31mThe delay time must only contain a number between 0 and 15\033[0m';
fi
esac
done
echo -e '\r\n\033[33mDelay start set to '$DELAYS' (seconds)\033[0m'
DELAYSTART="sleep $DELAYS"
break;;
[Nn]* ) 
echo -e '\r\n\033[32mUsing the default setting: 0 (second)\033[0m'
DELAYSTART=""
break;;
* ) echo -e '\r\n\033[31mPlease answer Y or N\033[0m';;
esac
done

echo -e ''
echo -e '\r\n\033[37mWhen everything work as expect, please set Luckfox Pico to shutdown after pwn success\033[0m'
while true; do
read -p "$(printf '\r\n\033[37mDo you want Luckfox Pico to shutdown after pwn success\r\n\033[37m(Y|N)?: \033[0m')" lpicoshut
case $lpicoshut in
[Yy]* ) 
SHUTDOWN="sudo poweroff"
echo -e '\r\n\033[32mThe Luckfox Pico will shutdown\033[0m'
break;;
[Nn]* ) 
echo -e '\r\n\033[33mThe Luckfox Pico will not shutdown\033[0m'
SHUTDOWN="exit 1"
break;;
* ) echo -e '\r\n\033[31mPlease answer Y or N\033[0m';;
esac
done

echo '#!/bin/bash
'$DELAYSTART'
pwncounter=0
while [ true ]
do
sudo /home/PPPwn/'$PPPwnPS4'
if [ $? -eq 0 ]; then
sleep 6
sudo ifconfig eth0 down
'$SHUTDOWN'
else
sudo ifconfig eth0 down
if [ $((pwncounter++)) -eq 7 ]; then exit 1; fi
sleep 1
sudo ifconfig eth0 up
sleep 2
fi
done' | sudo tee /home/PPPwn/runl.sh

if [ -f /home/speedup.txt ] ; then
echo -e '\r\n\033[32mSpeed up already installed\033[0m'
else
echo 'This is a flag file, was generated by installer, dont delete it' | sudo tee /home/speedup.txt
#add speed up code
echo 'ENABLE=true
MIN_SPEED=1104000
MAX_SPEED=1200000
GOVERNOR=performance' | sudo tee /etc/default/cpufrequtils
fi

if [ -f /home/PPPwnL.txt ] ; then
echo -e '\r\n\033[37mReconfig complete\033[0m'
sudo systemctl start pppwn
else
echo 'This is a flag file, was generated by installer, dont delete it' | sudo tee /home/PPPwnL.txt 
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
sudo systemctl enable pppwn
sudo systemctl start pppwn
echo -e '\033[37mInstall complete\033[0m'
fi
