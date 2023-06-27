{ ... }:
{
  users.users.daniele = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "changeme";
  };

  home-manager.users.daniele.imports = [
    ../../../home/users/daniele
  ];
}
