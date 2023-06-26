{ config, pkgs, ... }:
{
  imports = [ ./hardware-configuration.nix ];

  boot.loader = {
    efi = {
      canTouchEfiVariables = false;
    };
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      efiInstallAsRemovable = true;
      useOSProber = true;
    };
  };

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  time.timeZone = "Europe/Rome";

  i18n.defaultLocale = "en_US.UTF-8";
  
  services.xserver = {
    enable = true;
    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+i3";
    };
    desktopManager = {
      xfce.enable = true;
    };
    windowManager.i3.enable = true;
  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  users.users.daniele = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "changeme";
  };

  environment.systemPackages = with pkgs; [
    git
    vim 
    wget
  ];

  system.stateVersion = "23.05";
}

