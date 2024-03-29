all:
	mkdir -p ~/.config
	touch ~/.config/dummy
	mkdir -p ~/.ssh
	touch ~/.config/dummy
	stow --adopt stow/
	git reset --hard
	sudo mkdir -p /etc/lightdm
	sudo cp assets/Wolf.jpg /etc/lightdm/background.jpg
	sudo rm -Rf /etc/nixos
	sudo ln -sf $(shell pwd)/nixos/ /etc/
