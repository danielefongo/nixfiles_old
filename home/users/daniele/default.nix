{ pkgs, dots, ... }:
{
  imports = [
    ../../modules/core.nix
    ../../modules/desktop.nix
    ../../modules/dev.nix
    ../../modules/git.nix
    ../../modules/i3.nix
    ../../modules/neovim.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
  home.file = {
    "dotfiles/dots".source = dots;
  };
}
