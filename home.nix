{ config, pkgs, ... }:

{
  home.username = "daniele";
  home.homeDirectory = "/home/daniele";

  home.stateVersion = "23.05";

  home.packages = [];

  home.file = {};

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
