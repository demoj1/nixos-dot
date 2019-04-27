{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Dev
    wget
    git
    fish
    ctags
    docker_compose
    docker
    libcap # for go
    gcc    # for go
    gnumake
    ffmpeg-full

    ## Lang
    erlang
    elixir
    rustup
    go

    ## Editors
    vscode
    sublime3
    jetbrains.pycharm-community
    jetbrains.idea-community
    vim
    emacs

    # Other
    google-chrome
    tdesktop
    mc
    inkscape
    flameshot
    vlc
    tree
    zoom-us
    smartgithg

    ## Network
    openconnect
    networkmanager

    # Fonts
    fira-code
    source-code-pro
  ];
}
