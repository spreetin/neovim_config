{
  inputs,
  config,
  ...
}:
{
  flake.modules.neovim."config_minimal" = {
    imports = with config.flake.modules.neovim; [
      common
      blink-cmp
      conform
      lint
      mini
      snacks
      treesitter
      which-key
      lang_bash
      lang_nix
    ];
  };
}
