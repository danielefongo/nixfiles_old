{ pkgs, ... }:
{
  home.packages = with pkgs; [
    autojump
    bat
    fzf
    jq
    killall
    ncdu
    ripgrep
    tldr
    tree
    unzip
  ];
}
