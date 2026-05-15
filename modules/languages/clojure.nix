{
  flake.modules.neovim."lang_clojure" = {
    lsp.servers.clojure_lsp.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.clojure = [ "cljfmt" ];
      lint.lintersByFt.clojure = [ "clj-kondo" ];
    };
  };
}
