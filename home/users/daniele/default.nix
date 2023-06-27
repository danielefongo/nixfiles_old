{ pkgs, ... }:
{
  imports = [
    ../../modules/core.nix
    ../../modules/dev.nix
    ../../modules/git.nix
    ../../modules/neovim.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
