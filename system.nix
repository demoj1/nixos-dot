{ pkgs, ... }:
{
  networking.hostName = "dmr";
  networking.networkmanager.enable = true;

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
  };

  time.timeZone = "Asia/Novosibirsk";

  services.openssh.enable = true;
  services.openssh.authorizedKeysFiles = ["~/.ssh/id_rsa"];
  services.openssh.passwordAuthentication = false;
  services.openssh.permitRootLogin = "yes";
  services.openssh.challengeResponseAuthentication = false;

  services.emacs.enable = false;

  sound.enable = true;

  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.extraConfig = ''
  unload-module module-device-restore
  unload-module module-stream-restore
  unload-module module-card-restore
  '';

  system.stateVersion = "19.03";
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
    GOPATH = "/home/dmr/go";
    ERL_AFLAGS="-kernel shell_history enabled";
  };

  virtualisation.docker.enable = true;
}
