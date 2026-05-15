{
  flake.modules.neovim."conform" = {
    plugins.conform-nvim = {
      enable = true;
      autoInstall.enable = true;
      settings = {
        lsp_format = "fallback";
        format_on_save = ''
          {
            timeout_ms = 200,
            lsp_fallback = true
          }
        '';
      };
    };
  };
}
