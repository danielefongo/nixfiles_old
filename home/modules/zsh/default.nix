{ pkgs, ... }: {
  home.file.".zshrc".source = ./config/.zshrc;

  programs.zsh.enable = true;
}
