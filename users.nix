{ config, pkgs, ... }:
{
  users.users.dmr = {
    isNormalUser = true;
    extraGroups = [ 
      "docker" 
      "wheel" 
      "disk" 
      "audio" 
      "video" 
      "networkmanager" 
      "systemd-journal"
      "config"
    ];
    home = "/home/dmr";
    createHome = true;
    uid = 1000;
    shell = pkgs.fish;
  };
}
