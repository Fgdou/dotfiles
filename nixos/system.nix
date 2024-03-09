{
  config,
  lib,
  pkgs,
  ...
}:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in{
  imports = [
    (import "${home-manager}/nixos")
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 1;
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "23.11"; # Did you read the comment?

  # Lofee flow fn keys
  boot.extraModprobeConfig = ''
    options hid_apple fnmode=2
  '';
  networking.networkmanager.enable = true;
  systemd.services.NetworkManager-wait-online.enable = false;
}