{
  hardware = {
    enableRedistributableFirmware = true;
    graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
  
  zramSwap.enable = true; # Free RAM
  security.polkit.enable = true;
  programs.nix-ld.enable = true;
}