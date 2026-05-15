{
  flake.modules.neovim."lang_go" = {
    lsp.servers.gopls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.go = [ "gofumpt" ];
      lint.lintersByFt.go = [ "golangcilint" ];
    };
  };
}
