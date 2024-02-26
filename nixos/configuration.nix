# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  config,
  lib,
  pkgs,
  ...
}: let
  alejandra =
    (import (builtins.fetchTarball {
      url = "https://github.com/kamadorueda/alejandra/tarball/3.0.0";
    }) {})
    .outPath;
in {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Paris";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    desktopManager.cinnamon.enable = true;
  };
  services.cinnamon.apps.enable = true;

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.fgdou = {
    isNormalUser = true;
    extraGroups = ["wheel" "sudo" "docker"]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
      stow
      discord
      spotify
    ];
    initialHashedPassword = "$y$j9T$PBJmtGOGoRAzY3elVKXV6/$Gfti3VWGgcgY8/DIB5rLW8ZOhwWZafZI7YHcqfMsX04";
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    google-chrome
    vscode
    git
    alejandra
    gnumake
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  system.stateVersion = "23.11"; # Did you read the comment?
}
