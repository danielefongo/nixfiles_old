{ pkgs, dots, ... }: {
  home.packages = with pkgs; [ feh i3 i3lock-fancy ];

  xdg.configFile."i3" = {
    source = "${dots}/i3";
    onChange = "${pkgs.i3}/bin/i3-msg restart";
  };
}
