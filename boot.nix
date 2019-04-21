{ ... }:
{
  boot = {
    loader = {
      grub = {
        # device = "/dev/sda";
        # enable = true;
        # version = 2;
        # useOSProber = false;
      };
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };
}
