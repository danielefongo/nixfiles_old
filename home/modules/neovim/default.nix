{ pkgs, lib, config, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraPackages = with pkgs; [ gcc gnumake ];
  };

  xdg.configFile."nvim/init.lua".source = ./config/init.lua;
  xdg.configFile."nvim/lua/autocmd.lua".source = ./config/lua/autocmd.lua;
  xdg.configFile."nvim/lua/config".source = ./config/lua/config;
  xdg.configFile."nvim/lua/plugins.lua".source = ./config/lua/plugins.lua;
  xdg.configFile."nvim/lua/theme.lua".source = ./config/lua/theme.lua;
  xdg.configFile."nvim/lua/utils.lua".source = ./config/lua/utils.lua;
}
