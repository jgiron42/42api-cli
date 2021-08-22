#!/bin/zsh


if [ -e ~/.zshrc ]
then
	make -C autocomplete
	make -C autocomplete clean
	cp autocomplete/api_autocomplete bin/.
	printf "\nsource $PWD/zsh_conf.sh\n" >> ~/.zshrc
	echo "installation complete. please specify the UID and SECRET of your application in zsh_conf.sh and restart your shell"
else
	echo "please add $PWD/bin to your PATH"
fi
