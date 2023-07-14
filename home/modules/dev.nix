{ pkgs, ... }: { home.packages = with pkgs; [ nodejs_20 nixfmt ]; }
