{ pkgs, dots, ... }:
{
  home.packages = with pkgs; [
    dunst
  ];

  xdg.configFile."dunst" = {
    source = "${dots}/dunst";
    onChange = "${pkgs.systemd}/bin/systemctl --user restart dunst.service";
  };

  services.dunst.enable = true;
}
