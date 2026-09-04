{ pkgs, spicetify-nix, ... }:

let
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  programs.spicetify = {
    enable = true;

    # Theme
    theme = spicePkgs.themes.sleek;
    colorScheme = "UltraBlack";

    # Extensions
    enabledExtensions = with spicePkgs.extensions; [
      adblockify
      hidePodcasts
      autoSkipVideo
      aiBandBlocker
      spicyLyrics
      shuffle
      volumePercentage
    ];
  };
}
