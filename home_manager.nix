{ ... }:
{
  home-manager.users.dmr = {
    programs.vim = {
      enable = true;
      plugins = [
        "vim-airline" 
        "nerdtree" 
        "vim-nix"
        "youcompleteme"
        "vim-addon-nix"
        "vim-gitgutter"
        "ctrlp-vim"
      ];
      settings = { ignorecase = true; };
      extraConfig = ''
        set mouse=a
        set encoding=utf-8
        map <F2> :NERDTreeToggle<CR>
        map <F3> :NERDTreeFind<CR>
      '';
    };
  };

  imports = [
    (builtins.fetchTarball {
      sha256 = "1qmq5zwd4qdxdxh4zxc7yr7qwajgnsjdw2npw0rfkyahmrqw3j02";
      url = "https://github.com/msteen/nixos-vsliveshare/archive/86624fe317c24df90e9451dd5741220c98d2249d.tar.gz";
    })
  ];

  services.vsliveshare = {
    enable = true;
    enableWritableWorkaround = true;
    enableDiagnosticsWorkaround = true;
    extensionsDir = "/home/matthijs/.vscode/extensions";
  };
}
