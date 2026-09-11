{ pkgs, ... }:

{ 
  programs.fish.enable = true;
  users.users.gfd = {
    isNormalUser = true;
    description = "GFD"; # "Oh shit that's me"
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}
