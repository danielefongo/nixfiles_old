{ pkgs, dots, ... }:
{
  home.packages = with pkgs; [
    alacritty
    tmux
    entr
  ];

  home.file.".tmux.conf".source = "${dots}/tmux/tmux.conf";
  xdg.configFile."alacritty".source = "${dots}/alacritty";
}
