# Dotfiles

Using GNU stow to handle all dotfiles in my linux configurations.

# Enter shell
```shell
nix-shell -p git vim stow gnumake
```

# Clone
```sh
git clone https://github.com/Fgdou/dotfiles
cd dotfiles
```

# Edit hardware conf
Edit the `nixos/hardware-configuration.example`

# Apply
```sh
make
```
