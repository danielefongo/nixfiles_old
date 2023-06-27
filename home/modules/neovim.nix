{ pkgs, lib, dots, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraPackages = with pkgs; [
      gcc
      gnumake
    ];
  };

  xdg.configFile."nvim/init.lua".source = "${dots}/nvim/init.lua";
  xdg.configFile."nvim/lua".source = "${dots}/nvim/lua";
}
