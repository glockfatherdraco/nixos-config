{ ... }:

{
  services.flatpak = {
    enable = true;

    # Cleanup
    uninstallUnmanaged = true;
    uninstallUnused = true;

    # Automatic Updates
    update.auto = {
      enable = true;
      onCalendar = "daily";
    };

    # Remotes
    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];

    # Applications
    packages = [
      "com.valvesoftware.Steam"
      "org.prismlauncher.PrismLauncher"
      "space.bigrat.mocktail" # Life is Roblox
    ];
  };

  # Network workaround for the declarative installs because for whatever reason Flatpak updates start before THE FUCKING NETWORK IS EVEN ONLINE
  systemd.services."flatpak-managed-install".unitConfig = {
    After = [ "network-online.target" ];
    Wants = [ "network-online.target" ];
  };
}