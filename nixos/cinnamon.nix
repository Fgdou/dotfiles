{
  config,
  lib,
  pkgs,
  ...
}:{
  services.xserver = {
    enable = true;
    desktopManager.cinnamon = {
      enable = true;
      extraGSettingsOverrides = ''
[org/cinnamon]
desktop-effects-workspace=false
enabled-applets=['panel1:center:0:menu@cinnamon.org:0', 'panel1:center:1:grouped-window-list@cinnamon.org:2', 'panel1:right:3:systray@cinnamon.org:3', 'panel1:right:4:xapp-status@cinnamon.org:4', 'panel1:right:5:notifications@cinnamon.org:5', 'panel1:right:6:printers@cinnamon.org:6', 'panel1:right:7:removable-drives@cinnamon.org:7', 'panel1:right:8:keyboard@cinnamon.org:8', 'panel1:right:10:network@cinnamon.org:10', 'panel1:right:11:sound@cinnamon.org:11', 'panel1:right:12:power@cinnamon.org:12', 'panel1:right:13:calendar@cinnamon.org:13']
next-applet-id=18

[org/cinnamon/desktop/background]
picture-options='zoom'
picture-uri='file:///home/fgdou/dotfiles/assets/Wolf.jpg'

[org/cinnamon/desktop/background/slideshow]
image-source='directory:///home/fgdou/dotfiles/assets'

[org/cinnamon/desktop/interface]
cursor-theme='Adwaita'
gtk-theme='Mint-L-Dark'
icon-theme='Mint-Y-Aqua'

[org/cinnamon/theme]
name='Mint-Y-Dark-Blue'

[org/nemo/preferences]
show-hidden-files=true

[org/x/apps/portal]
color-scheme='prefer-dark'
      '';
    };
    layout = "us";
    xkbVariant = "intl";
    displayManager.lightdm.greeters.slick.extraConfig = ''
    background=/etc/lightdm/background.jpg
    '';
  };
  services.cinnamon.apps.enable = true;
  services.xserver.libinput.enable = true;
}