{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot = {
    initrd.kernelModules = [
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
    ];
  };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/5cd5c91e-f389-4127-ade8-f96b1009f239";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/CFAB-7354";
      fsType = "vfat";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 16;

  hardware = {
    opengl.driSupport = true;
    opengl.driSupport32Bit = true;
    opengl.enable = true;
    nvidia.modesetting.enable = true;
    bluetooth.enable = true;
    bluetooth.extraConfig = "
      [General]
      Enable=Gateway,Source,Socket
      Master=true
      HFP=true
      HSP=true
    ";
  };
}
