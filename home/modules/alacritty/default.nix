{ pkgs, ... }: {
  home.packages = with pkgs; [ alacritty entr ];

  xdg.configFile."alacritty/alacritty.yml".source = ./config/alacritty.yml;
}
