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
  };
}