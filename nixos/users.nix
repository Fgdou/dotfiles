{
  config,
  lib,
  pkgs,
  ...
}:{
  users.users.fgdou = {
    isNormalUser = true;
    extraGroups = ["wheel" "sudo" "docker" "netdev"]; # Enable ‘sudo’ for the user.
    initialHashedPassword = "$y$j9T$PBJmtGOGoRAzY3elVKXV6/$Gfti3VWGgcgY8/DIB5rLW8ZOhwWZafZI7YHcqfMsX04";
  };
  home-manager.users.fgdou = {
    home.stateVersion = "18.09";
    /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */

    dconf = {
      enable = true;
      settings = {
        "org/gnome/desktop/interface".color-scheme = "prefer-dark";
        "org/cinnamon/desktop/keybindings/media-keys" = {
          area-screenshot-clip = ["print"];
          screenshot= [];
        };
        "org/cinnamon/desktop/interface" = {
          cursor-blink-time = 1200;
          cursor-size = 24;
          cursor-theme = "Adwaita";
          gtk-theme = "Mint-L-Dark";
          icon-theme = "Mint-Y-Aqua";
          toolkit-accessibility="false";
        };
        "org/cinnamon/desktop/background".picture-uri = "file:///home/fgdou/dotfiles/assets/Wolf.jpg";
        "org/cinnamon" = {
          desktop-effects-workspace = "false";
          enabled-applets = [
            "panel1:center:0:menu@cinnamon.org:0"
            "panel1:center:1:grouped-window-list@cinnamon.org:2"
            "panel1:right:3:systray@cinnamon.org:3"
            "panel1:right:4:xapp-status@cinnamon.org:4"
            "panel1:right:5:notifications@cinnamon.org:5"
            "panel1:right:6:printers@cinnamon.org:6"
            "panel1:right:7:removable-drives@cinnamon.org:7"
            "panel1:right:8:keyboard@cinnamon.org:8"
            "panel1:right:10:network@cinnamon.org:10"
            "panel1:right:11:sound@cinnamon.org:11"
            "panel1:right:12:power@cinnamon.org:12"
            "panel1:right:13:calendar@cinnamon.org:13"
          ];
        };
        "org/nemo/preferences".show-hidden-files = "true";
        "org/x/apps/portal".color-scheme = "prefer-dark";
        "org/cinnamon/desktop/background".picture-options = "zoom";
        "org/gnome/libgnomekbd/keyboard".options= [
          "caps\tcaps:none"
        ];
        "org/virt-manager/virt-manager/connections".uris = [
          "qemu+ssh://fgdou@nas/system"
        ];
        "org.gnome.desktop.a11y.applications".screen-keyboard-enabled = "false";
        "apps.onboard".xembed-onboard = "false";
      };
    };
  };
}