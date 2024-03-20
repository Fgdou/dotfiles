all:
	mkdir -p ~/.config
	touch ~/.config/dummy
	mkdir -p ~/.ssh
	touch ~/.config/dummy
	stow stow/
	sudo cp assets/Wolf.jpg /etc/lightdm/background.jpg
	sudo ln -sf $(shell pwd)/nixos/ /etc/
