clear
apt update
apt upgrade
apt install toilet
clear
echo "========================================"|toilet -f term -F gay
echo
echo -e "	\033[92mNgrok installation"
echo
echo "========================================"|toilet -f term -F gay
echo
echo -e -n "\033[93m Do you want to install ngrok\033[91m (\033[92my/\033[94mn\033[91m) "
read a
if [ "$a" = "y" ];then
echo
echo -e "\033[92m [+] Installing requirement"
echo
sleep 2
apt update
apt upgrade
apt install wget
clear
echo
sleep 1
echo -e "\033[93m [+] Downloading ngrok......"
sleep 2
echo
wget https://github.com/rooted-cyber/upload/raw/master/ngrok
clear
sleep 1
echo -e "\033[94m [-] Installing ngrok......"
sleep 2
cp -f ngrok $PREFIX/bin
chmod 777 $PREFIX/bin/ngrok
rm -f ngrok
sleep 1
echo
echo -e "\033[96m [×] Successfully Installed"
fi
