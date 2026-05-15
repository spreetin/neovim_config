{
  config,
  ...
}:
{
  flake.modules.neovim."config_small" = {
    imports = with config.flake.modules.neovim; [
      common

      # Plugins
      blink-cmp
      conform
      lint
      lsp
      mini
      neotree
      snacks
      telescope
      toggleterm
      treesitter
      trouble
      which-key

      # Languages
      lang_bash
      lang_c
      lang_css
      lang_html
      lang_json
      lang_markdown
      lang_nix
      lang_python
      lang_sql
      lang_typescript
      lang_yaml
    ];
  };
}
