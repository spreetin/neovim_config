{
  flake.modules.neovim."lang_bash" = {
    lsp.servers.bashls.enable = true;
    plugins = {
      lint.lintersByFt.bash = [ "bash" ];
      conform-nvim.settings.formatters_by_ft.bash = [ "beautysh" ];
    };
  };
}
