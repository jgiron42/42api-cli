#!/bin/zsh

make -C json-beautifier
make -C json-beautifier clean
cp json-beautifier/json-beautifier bin/.

if [ -e ~/.zshrc ]
then
	make -C autocomplete
	make -C autocomplete clean
	cp autocomplete/api_autocomplete bin/.
	grep "source $PWD/zsh_conf.sh" ~/.zshrc > /dev/null
	if [ $? -eq 1 ]
	then
		echo "PWD=$PWD" >tmp
		cat zsh_conf.sh >>tmp
		mv tmp zsh_conf.sh
		printf "\nsource $PWD/zsh_conf.sh\n" >> ~/.zshrc
	fi
	echo "installation complete. please specify the UID and SECRET of your application in zsh_conf.sh and restart your shell"
else
	echo "please add $PWD/bin to your PATH"
fi
