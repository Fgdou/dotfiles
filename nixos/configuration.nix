# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./packages.nix
    ./cinnamon.nix
    ./bluetooth.nix
    ./system.nix
    ./users.nix
  ];

  networking.extraHosts = 
    ''
      192.168.1.173 fgdou.ovh dash.fgdou.ovh vaultwarden.fgdou.ovh
    '';
}
