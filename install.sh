#!/bin/bash
cd $PREFIX/share/figlet
if [ -e font.flf ];then
echo
else
printf "\033[1;92m \n[+] Downloading requirements\n"
sleep 1
apt update
apt upgrade
apt install figlet
apt install toilet
apt install wget
cd ~/Install-Ngrok
cp font.flf $PREFIX/share/figlet
printf "\033[1;93m Download complete"
fi
menu() {
figlet -f font Ngrok|toilet -f term -F metal
echo
echo "========================================"|toilet -f term -F gay
echo
echo -e "	\033[1;92mNgrok installation"
echo
echo "========================================"|toilet -f term -F gay
echo
echo -e -n "\033[1;93m Do you want to install ngrok\033[91m (\033[92my\033[96m/\033[94mn\033[91m) "
read a
case $a in
y|Y)
echo -e "\033[1;92m [+] Installing requirement"
echo
sleep 2
#command -v wget > /dev/null 2>&1 || pkg install wget
echo
sleep 1
echo -e "\033[1;93m [+] Downloading ngrok......"
sleep 2
echo
wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip
sleep 1
echo -e "\033[1;96m Unzip ngrok.zip......."
unzip ngrok.zip
sleep 1
echo -e "\033[94m [-] Installing ngrok......"
sleep 2
cp -f ngrok $PREFIX/bin
cp -f ngrok ~
chmod 700 ~/ngrok
chmod 700 $PREFIX/bin/ngrok
rm -f ngrok
sleep 1
echo
echo -e "\033[1;96m [+] Successfully Installed"
echo
echo
toilet -f font Exit 
exit ;;
n|N)exit ;;
*)menu ;;
esac
}
menu