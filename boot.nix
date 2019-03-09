{ ... }:
{
  boot = {
    loader = {
      grub = {
        device = "/dev/sda";
        enable = true;
        version = 2;
        useOSProber = true;
      };
      systemd-boot.enable = true;
    };
  };
}
