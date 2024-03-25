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
    virt-manager
    python3
    rustup
    nodejs_21
    jdk
    jdk17
    maven
    nmap
    dig
    gcc
    cmake
    htop
    gnome.gnome-system-monitor
  ];

  users.users.fgdou.packages = with pkgs; [
    tree
    stow
    discord
    spotify
    prismlauncher
    libreoffice-qt
    parsec-bin
  ];

  programs.steam.enable = true;
  services.teamviewer.enable = true;

  virtualisation.docker.enable = true;
  services.openssh.enable = true;
  services.printing.enable = true;
  nixpkgs.config.allowUnfree = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.pulseaudio.support32Bit = true;
}