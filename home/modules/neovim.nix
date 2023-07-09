{ pkgs, lib, config, dots, ... }:

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
  xdg.configFile."nvim/lua/autocmd.lua".source = "${dots}/nvim/lua/autocmd.lua";
  xdg.configFile."nvim/lua/config".source = "${dots}/nvim/lua/config";
  xdg.configFile."nvim/lua/plugins.lua".source = "${dots}/nvim/lua/plugins.lua";
  xdg.configFile."nvim/lua/theme.lua".source = "${dots}/nvim/lua/theme.lua";
  xdg.configFile."nvim/lua/utils.lua".source = "${dots}/nvim/lua/utils.lua";
}
