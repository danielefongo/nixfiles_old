{ pkgs, ... }: {
  programs.git = {
    enable = true;
    delta.enable = true;
  };

  home.packages = [ pkgs.tig ];

  xdg.configFile."git".source = ./config;
}
