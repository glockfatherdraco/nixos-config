{
  lib,
  nixcord,
  spicetify-nix,
  ...
}:

{
  # Imports
  imports =
    [
      nixcord.homeModules.nixcord
      spicetify-nix.homeManagerModules.spicetify
    ]
    ++ lib.fileset.toList (
      lib.fileset.fileFilter (file: file.hasExt "nix") ./modules
    );

  # Hi
  home = {
    username = "gfd";
    homeDirectory = "/home/gfd";
    stateVersion = "26.05";
  };

  programs.home-manager.enable = true;
}
