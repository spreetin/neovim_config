{
  config,
  ...
}:
{
  flake.modules.neovim."config_small" = {
    imports = with config.flake.modules.neovim; [
      common
      blink-cmp
      conform
      lint
      lsp
      mini
      snacks
      telescope
      treesitter
      trouble
      which-key
      lang_bash
      lang_c
      lang_json
      lang_nix
      lang_python
    ];
  };
}
