{ pkgs, ... }:
{
  users.users.daniele = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "changeme";
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  home-manager.users.daniele.imports = [
    ../../../home/users/daniele
  ];
}
