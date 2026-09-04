{ pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;
  };

  xdg.configFile."fastfetch/config.jsonc".source = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/glockfatherdraco/fastfetch-config/refs/heads/main/config.jsonc";
    hash = "sha256-QrR37zOud5NePWlwVO8/j3tsXf2qYP7Ek+drQD218tQ=";
  };
}
