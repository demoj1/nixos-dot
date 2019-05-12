{ ... }:
{
  services = {
    xserver = {
      enable = true;
      layout = "us,ru(winkeys)";
      xkbOptions = "grp:caps_toggle,grp_led:caps";
      xkbVariant = "winkeys";

      videoDrivers = [ "nvidia" ];

      desktopManager.gnome3.enable = true;
      desktopManager.plasma5.enable = true;
    };
  };
}
