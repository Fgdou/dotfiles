all:
	stow stow/
	sudo cp assets/Wolf.jpg /etc/lightdm/background.jpg
	sudo ln -sf $(shell pwd)/nixos/ /etc/