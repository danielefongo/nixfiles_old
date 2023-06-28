{ pkgs, dots, ... }:
{
  home.file.".zshrc".source = "${dots}/.zshrc";

  programs.zsh.enable = true;
}
