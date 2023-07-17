{ pkgs, ... }: {
  imports = [
    ../modules/alacritty
    ../modules/core.nix
    ../modules/desktop
    ../modules/dev.nix
    ../modules/dunst
    ../modules/git
    ../modules/i3
    ../modules/picom
    ../modules/polybar
    ../modules/rofi
    ../modules/tmux
    ../modules/neovim
    ../modules/zsh
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
