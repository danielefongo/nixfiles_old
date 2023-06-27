{ pkgs, ... }:
{
  imports = [
    ../../modules/core.nix
    ../../modules/dev.nix
    ../../modules/neovim.nix
  ];

  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
