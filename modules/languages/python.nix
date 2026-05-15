{
  flake.modules.neovim."lang_python" = {
    lsp.servers.pylsp.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.python = [ "black" ];
      lint.lintersByFt.python = [ "pylint" ];
    };
  };
}
