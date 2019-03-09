{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Dev
    wget
    git
    guake
    fish

    ## Lang
    elixir

    ## Editors
    vscode
    sublime3
    vim

    # Other
    google-chrome
    tdesktop
    mc

    # Fonts
    fira-code
  ];
}
