{ pkgs, ... }:
{
  networking.hostName = "dmr";
  networking.networkmanager.enable = true;

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

  fonts = {
    fonts = with pkgs; [
      fira-code
    ];
  };

  environment.variables = {
    EDITOR = "vim";
    SUDO_EDITOR = "vim";
  };
}
