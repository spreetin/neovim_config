{
  imports = [
    ./blink-cmp.nix
    ./conform.nix
    ./dap.nix
    ./lint.nix
    ./mini.nix
    ./snacks.nix
    ./telescope.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  plugins = {
    lspconfig.enable = true;
    clangd-extensions.enable = true;
    actions-preview.enable = true;
    bufferline.enable = true;
    cmake-tools.enable = true;
    #cmp = {
    #  enable = true;
    #  autoEnableSources = true;
    #  settings.sources = [
    #    { name = "buffer"; }
    #    { name = "nvim_lsp"; }
    #    { name = "treesitter"; }
    #  ];
    #};
    dashboard.enable = true;
    dial.enable = true;
    flash.enable = true;
    friendly-snippets.enable = true;
    gitsigns.enable = true;
    grug-far.enable = true;
    illuminate.enable = true;
    inc-rename.enable = true;
    indent-blankline.enable = true;
    lazygit.enable = true;
    #lualine.enable = true;
    lz-n = {
      enable = true;
      autoLoad = true;
    };
    neo-tree.enable = true;
    nix-develop.enable = true;
    nix.enable = true;
    noice.enable = true;
    notify.enable = true;
    nui.enable = true;
    nvim-autopairs.enable = true;
    #nvim-snippets.enable = true;
    nvim-surround.enable = true;
    persistence.enable = true;
    spectre.enable = true;
    trouble.enable = true;
    typescript-tools.enable = true;
    undotree.enable = true;
    web-devicons.enable = true;
  };
}
