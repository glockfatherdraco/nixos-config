{ lib, ... }:

let
  hardwareConfiguration = lib.optional (builtins.pathExists ./hardware-configuration.nix) ./hardware-configuration.nix;
  systemModules = lib.fileset.toList (
    lib.fileset.intersection
      (lib.fileset.unions [
        ./core
        ./daemons
      ])
      (lib.fileset.fileFilter (file: file.hasExt "nix") ./.)
  );
in
{
  imports = hardwareConfiguration ++ systemModules;
}
