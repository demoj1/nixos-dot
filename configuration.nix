{ config, pkgs, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
      "${builtins.fetchTarball https://github.com/rycee/home-manager/archive/master.tar.gz}/nixos"
      ./boot.nix
      ./system.nix
      ./home_manager.nix
      ./packages.nix
      ./users.nix
      ./xserver.nix
    ];
}
