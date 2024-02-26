all:
	stow stow/
	sudo ln -sf $(shell pwd)/nixos/ /etc/