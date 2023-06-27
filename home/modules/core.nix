{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fzf
    ripgrep
    unzip
  ];
}
