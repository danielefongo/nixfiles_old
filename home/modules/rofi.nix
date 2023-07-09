{ pkgs, dots, ... }:
{
  home.packages = with pkgs; [ rofi ];

  xdg.configFile."rofi".source = "${dots}/rofi";
}
