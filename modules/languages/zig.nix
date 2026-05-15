{
  flake.modules.neovim."lang_zig" = {
    lsp.servers.zls.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.zig = [ "zigfmt" ];
      lint.lintersByFt.zig = [ "zig" ];
    };
  };
}
