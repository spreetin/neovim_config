{
  flake.modules.neovim."lang_typescript" = {
    lsp.servers.ts_ls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.typescript = [ "prettier" ];
      lint.lintersByFt.typescript = [ "jshint" ];
      typescript-tools.enable = true;
    };
  };
}
