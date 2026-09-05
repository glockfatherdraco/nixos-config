{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Terminal Stuff
    wget
    whois

    # Applications
    audacity
    libreoffice
    loupe # Until system76 makes cosmic viewer
    neovim
    obs-studio
    proton-vpn
    protonplus
    r2modman
    vacuum-tube
    
    # Fonts
    nerd-fonts._0xproto
  ];
}
