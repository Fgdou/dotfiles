all:
	mkdir ~/.config
	touch ~/.config/dummy
	mkdir ~/.ssh
	touch ~/.config/dummy
	stow stow/
	sudo cp assets/Wolf.jpg /etc/lightdm/background.jpg
	sudo ln -sf $(shell pwd)/nixos/ /etc/