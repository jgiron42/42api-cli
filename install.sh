#!/bin/zsh

if [ -e ~/.zshrc ]
then
	make -C autocomplete
	make -C autocomplete clean
	cp autocomplete/api_autocomplete bin/.
	grep "source $PWD/zsh_conf.sh" ~/.zshrc > /dev/null
	if [ $? -eq 1 ]
	then
		printf "\nsource $PWD/zsh_conf.sh\n" >> ~/.zshrc
	fi
	echo "installation complete. please specify the UID and SECRET of your application in zsh_conf.sh and restart your shell"
else
	echo "please add $PWD/bin to your PATH"
fi
