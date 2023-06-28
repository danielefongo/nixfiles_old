{ pkgs, ... }:
{
  home.packages = with pkgs; [
    _1password-gui
    discord
    firefox
    flameshot
    slack
    spotify
    telegram-desktop
    whatsapp-for-linux
  ];
}
