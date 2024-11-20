{ config, pkgs, ... }:

{
  imports = [
   ../../apps/tmux.nix
   ../../apps/nvim.nix
  ];

  home.username = "oli";
  home.homeDirectory = "/home/oli";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    htop
    neofetch
    hugo
    powerline-fonts
    pipenv
    which
    gcc
    openldap
    binutils
    ansible-language-server
    # All the C libraries that a manylinux_1 wheel might depend on:
    ncurses
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libICE
    xorg.libSM
    glib
    gnupg
  ];

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink ../../dotfiles/nvim;
  };

}
