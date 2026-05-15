{
  flake.modules.neovim."lang_json" = {
    lsp.servers.jsonls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.json = [ "prettier" ];
      lint.lintersByFt.json = [ "json_tool" ];
    };
  };
}
