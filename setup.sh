pr()
{
	echo -e "$(random)=====================\n\033[0mINSTALLING FOR TERMUX\n$(random)====================="
}
pr
command -v msg || bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
pr
msg
pr
msg shortcut cmd : ng
pr
cd $PREFIX/bin
if [ -e ng ];then
pr
msg already added shortcut cmd : ng
pr
else
cd $PREFIX/bin
cat >> ng << EOF
cd ~/Ins*Ng*
bash inst*
EOF
chmod 777 ng
fi