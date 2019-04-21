{ ... }:
{
  services = {
    xserver = {
      enable = true;
      # videoDrivers = [ "nvidia" ];
      desktopManager.gnome3.enable = true;
      layout = "us";
    };
  };
}
