{ pkgs, ... }:
let
  i3resize = pkgs.writeShellScriptBin "i3resize" (builtins.readFile ./i3resize);

in {
  home.packages = with pkgs; [ feh i3 i3lock-fancy i3resize ];

  xdg.configFile."i3" = {
    source = ./config;
    onChange = "${pkgs.i3}/bin/i3-msg restart";
  };
}
