{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fzf
    killall
    ripgrep
    unzip
  ];
}
