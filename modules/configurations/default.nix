{
  config,
  ...
}:
{
  flake.modules.neovim."config_default" = {
    imports = with config.flake.modules.neovim; [
      common

      # Plugins
      blink-cmp
      claude
      codebook
      conform
      dap
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
      lang_cpp
      lang_css
      lang_go
      lang_haskell
      lang_html
      lang_java
      lang_javascript
      lang_json
      lang_lua
      lang_markdown
      lang_markdown_preview
      lang_nix
      lang_python
      lang_qml
      lang_rust
      lang_sql
      lang_svelte
      lang_tailwindcss
      lang_typescript
      lang_yaml
      lang_zig
    ];
  };
}
