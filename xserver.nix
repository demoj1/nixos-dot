{ ... }:
{
  services = {
    xserver = {
      enable = true;
      layout = "us";

      desktopManager.gnome3.enable = true;
    };
  };
}
