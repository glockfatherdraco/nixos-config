{ pkgs, system, packages, ... }:

{
  home = {
    stateVersion = system.state;
    packages = packages pkgs;
    sessionVariables.TERMINAL = "cosmic-term";
  };
}
