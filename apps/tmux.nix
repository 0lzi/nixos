{ config, pkgs , ... }:

{
  programs.tmux = {
    enable = true;
    mouse = true;
    baseIndex = 1;
    sensibleOnTop = false;
    extraConfig = (builtins.readFile ../dotfiles/tmux.conf);
    plugins = with pkgs; [
      {
      plugin = tmuxPlugins.catppuccin;
      extraConfig = ''
        set -g @catppuccin_flavour 'mocha'
      '';
      }
      {
      plugin = tmuxPlugins.resurrect;
      extraConfig = ''
        set -g @resurrect-strategy-nvim 'session'
      '';
      }
      {
      plugin = tmuxPlugins.continuum;
      extraConfig = ''
        set -g @continuum-restore 'on'
        set -g @continuum-save-interval '30' # minutes
      '';
      }
      {
      plugin = tmuxPlugins.vim-tmux-navigator;
      }
      {
      plugin = tmuxPlugins.yank;
      }
    ];
  };
}
