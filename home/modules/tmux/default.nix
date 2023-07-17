{ pkgs, ... }: {
  home.packages = with pkgs; [ tmux entr ];

  home.file.".tmux.conf".source = ./config/tmux.conf;
}
