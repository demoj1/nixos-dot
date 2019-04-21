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
  services.emacs.enable = true;

  sound.enable = true;

  hardware.pulseaudio.enable = true;

  system.stateVersion = "18.09";
  system.autoUpgrade.enable = true;

  nixpkgs.config.allowUnfree = true;

  fonts = {
    fontconfig.ultimate.enable = true;
    fonts = with pkgs; [
      fira-code
      source-code-pro
    ];
  };

  environment.variables = {
    EDITOR = "vim";
    SUDO_EDITOR = "vim";
    ENV_DIR = "/home/dmr/.venvs";
  };

  virtualisation.docker.enable = true;
  # virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.host.enableExtensionPack = true;
}
