{
  inputs,
  config,
  ...
}:
{
  flake.modules.neovim."config_minimal" = {
    imports = with config.flake.modules.neovim; [
      common

      # Plugins
      blink-cmp
      conform
      lint
      mini
      snacks
      treesitter
      which-key

      # Languages
      lang_bash
      lang_nix
    ];
  };
}
