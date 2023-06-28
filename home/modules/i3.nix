{ pkgs, dots, ... }:
{
  home.packages = with pkgs; [
    dunst
    feh
    i3
    i3lock-fancy
    picom
    polybarFull
    rofi
  ];

  xdg.configFile = {
    "dunst".source = "${dots}/dunst";
    "i3".source = "${dots}/i3";
    "picom".source = "${dots}/picom";
    "polybar".source = "${dots}/polybar";
    "rofi".source = "${dots}/rofi";
  };

  services.dunst.enable = true;
}
