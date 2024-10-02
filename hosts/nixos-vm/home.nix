{ config, pkgs, ... }:

{
  home.username = "oliverkelly";
  home.homeDirectory = "/home/oliverkelly";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    htop
    neofetch
  ];
}
