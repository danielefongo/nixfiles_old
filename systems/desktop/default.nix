{ config, pkgs, ... }:
{
  imports = [
    ../modules/base.nix
    ../modules/i3.nix
    ../modules/networking.nix
    ../modules/sound.nix
    ../modules/users
    ../modules/users/daniele.nix
    ./hardware-configuration.nix
  ];

  environment.systemPackages = with pkgs; [
    git
    vim
    wget
  ];

  system.stateVersion = "23.05";
}

