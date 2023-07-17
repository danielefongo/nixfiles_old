{ pkgs, ... }: {
  home.packages = with pkgs; [ dunst ];

  xdg.configFile."dunst" = {
    source = ./config;
    onChange = "${pkgs.systemd}/bin/systemctl --user restart dunst.service";
  };

  services.dunst.enable = true;
}
