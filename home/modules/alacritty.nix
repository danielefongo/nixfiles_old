{ pkgs, dots, ... }:
{
  home.packages = with pkgs; [
    alacritty
    tmux
    entr
  ];

  home.file.".tmux.conf".source = "${dots}/tmux/tmux.conf";
  xdg.configFile."alacritty/alacritty.yml".source = "${dots}/alacritty/alacritty.yml";
}
