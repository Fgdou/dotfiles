{
  config,
  lib,
  pkgs,
  ...
}:{
  services.xserver = {
    enable = true;
    desktopManager.cinnamon.enable = true;
    layout = "us";
    xkbVariant = "intl";
    displayManager.lightdm.greeters.slick.extraConfig = ''
    background=/etc/lightdm/background.jpg
    '';
  };
  services.cinnamon.apps.enable = true;
  services.xserver.libinput.enable = true;
  i18n.inputMethod.enabled = "ibus";
}