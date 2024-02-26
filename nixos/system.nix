{
  config,
  lib,
  pkgs,
  ...
}:{
  boot.loader.systemd-boot.enable = true;
  nixpkgs.config.allowUnfree = true;

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "23.11"; # Did you read the comment?
}