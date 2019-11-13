ngrok_server() {
	clear
	toilet -F gay Ngrok
	echo
	printf "	\033[91m [ 1 ] \033[92mHiddenEye\n"
	printf "	\033[91m [ 2 ] \033[92mShellphish\n"
	printf "	\033[91m [ 3 ] \033[92mLocator\n"
	printf "	\033[91m [ 4 ] \033[92mSaycheese\n"
	echo
	echo -e -n "\033[93m Select >> "
	read a
	if [ "$a" = "1" ];then
	printf "\n \033[92m [+] Installing Ngrok in HiddenEye\n"
	cp -f $PREFIX/bin/ngrok ~/HiddenEye/Server
	chmod 777 ~/HiddenEye/Server/ngrok
	sleep 3
	printf "\n \033[92m [+] Installed successfully"
	fi
	if [ "$a" = "2" ];then
	printf "\n [+] Installing Ngrok in shellphish\n"
	cp -f $PREFIX/bin/ngrok ~/shellphish
	chmod 777 ~/shellphish/ngrok
	sleep 3
	printf "\033[92m [+] Installed successfull"
	fi
	if [ "$a" = "3" ];then
	printf "\n [+] Installing Ngrok in Locator\n"
	cp -f $PREFIX/bin/ngrok ~/locator
	chmod 777 ~/locator/ngrok
	sleep 3
	printf "\033[92m [+] Installed successfull"
	fi
	if [ "$a" = "4" ];then
	printf "\n [+] Installing Ngrok in saycheese\n"
	cp -f $PREFIX/bin/ngrok ~/saycheese
	chmod 777 ~/saycheese/ngrok
	sleep 3
	printf "\033[92m [+] Installed successfull"
	fi
	}
	
	clear
printf "\033[92m [+] Downloading requirements\n"
pkg install toilet > /dev/null 2>&1
printf "\033[93m Download complete"
sleep 1
clear
echo "========================================"|toilet -f term -F gay
echo
echo -e "	\033[92mNgrok installation"
echo
echo "========================================"|toilet -f term -F gay
echo
echo -e -n "\033[93m Do you want to install ngrok\033[91m (\033[92my\033[96m/\033[94mn\033[91m) "
read a
if [ "$a" = "y" ];then
echo
echo -e "\033[92m [+] Installing requirement"
echo
sleep 2
command -v wget > /dev/null 2>&1 || pkg install wget > /dev/null 2>&1
echo
sleep 1
echo -e "\033[93m [+] Downloading ngrok......"
sleep 2
echo
wget https://github.com/rooted-cyber/upload/raw/master/ngrok > /dev/null 2>&1
sleep 1
echo -e "\033[94m [-] Installing ngrok......"
sleep 2
cp -f ngrok $PREFIX/bin
chmod 777 $PREFIX/bin/ngrok
rm -f ngrok
sleep 1
echo
echo -e "\033[96m [+] Successfully Installed"
printf "\n \033[93m If you want install ngrok any tool\n\n \033[96m Press enter"
read
ngrok_server
fi
if [ "$a" = "n" ];then
printf "\033[92m If you want install ngrok in any tool \n \033[96m press enter"
read
ngrok_server
fi