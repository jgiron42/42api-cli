#!/bin/bash


if [ -e ~/.zshrc ]
then
	make -C autocomplete
	make -C autocomplete clean
	cp autocomplete/autocomplete bin/.
	printf "\nsource $PWD/zsh_conf.sh\n" >> ~.zshrc
	source ~/.zshrc
else
	echo "please add $PWD/bin to your PATH"
fi
