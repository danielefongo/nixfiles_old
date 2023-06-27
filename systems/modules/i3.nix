{ ... }:
{
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
}

