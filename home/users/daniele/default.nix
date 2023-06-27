{ pkgs, ... }:
{
  home.packages = [];

  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
