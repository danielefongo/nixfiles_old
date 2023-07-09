{ config, options, lib, pkgs, dots, ... }:

{
  home.packages = [ pkgs.polybarFull ];

  xdg.configFile."polybar/config" = {
    source = "${dots}/polybar/config";
    onChange = "${pkgs.systemd}/bin/systemctl --user restart polybar.service";
  };

  systemd.user.services.polybar = {
    Unit = {
      Description = "Polybar";
      After = [ "graphical-session-pre.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Install = { WantedBy = [ "graphical-session.target" ]; };

    Service = {
      ExecStart = pkgs.writeScript "polybar-launch" (builtins.readFile "${dots}/polybar/launch.sh");
      Restart = "always";
      RestartSec = 2;
    };
  };
}
