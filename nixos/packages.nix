{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    google-chrome
    vscode
    git
    gnumake
    bat
    libgtop
    gnomeExtensions.system-monitor
    rnix-lsp
    direnv
  ];

  users.users.fgdou.packages = with pkgs; [
    tree
    stow
    discord
    spotify
  ];

  virtualisation.docker.enable = true;
  services.openssh.enable = true;
  services.printing.enable = true;
}