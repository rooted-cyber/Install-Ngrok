ngi() {
		cd ~/Ins*Ng*
	crf
	tar -xvzf ngrok*tgz -C ngrok
	cd ngrok
	chmod 777 ngrok
	cp ngrok $PREFIX/bin
	msg now installed ngrok
	msg
	msg Now installing ngrok authtoken
	echo -en "$(random) Enter ngrok authtoken :\033[0m "
	read n
	if [ $n ];then
	msg now adding 
	ngrok config add-authtoken $n
	fi
	msg now starting ngrok
	curl -Ls https://gist.githubusercontent.com/rooted-cyber/bf353767f6caf775dc30b6c83485d366/raw/ngrok | bash
	}
	inh() {
	if [ $(command -v ngrok) ];then
	msg Already installed ngrok
	msg
	msg now starting ngrok
	curl -Ls https://gist.githubusercontent.com/rooted-cyber/bf353767f6caf775dc30b6c83485d366/raw/ngrok | bash
	else
	msg now downloading ngrok
	wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz
	ngi
	fi
	}
mn() {
	tof ngrok
echo -en "$(random) Do you want install ngrok $(random)(Y|N) \033[0m"
read m
case $m in
y|Y)inh ;;
n|N)msg q kiye install ;;
esac
}
mn