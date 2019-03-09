{ ... }:
{
  networking.hostName = "dmr";

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  time.timeZone = "Asia/Novosibirsk";

  services.openssh.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  system.stateVersion = "18.09";
  system.autoUpgrade.enable = true;

  nixpkgs.config.allowUnfree = true;
}
