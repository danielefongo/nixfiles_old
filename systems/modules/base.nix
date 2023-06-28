{ pkgs, ... }:
{
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

  time.timeZone = "Europe/Rome";
  i18n.defaultLocale = "en_US.UTF-8";

  fonts.fonts = with pkgs; [
    font-awesome
    (nerdfonts.override { fonts = [ "Hasklig" ]; })
  ];
}
