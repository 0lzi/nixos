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
  ];
  
  home.file.".config/nvim" = {
    source = "../../dotfiles/nvim";
    recursive = true;
  };


}
