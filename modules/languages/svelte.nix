{
  flake.modules.neovim."lang_svelte" =
    { pkgs, ... }:
    {
      lsp.servers.svelte.enable = true;
      extraPackages = with pkgs; [ svelte-check ];
      plugins.lint.lintersByFt.svelte = [ "svelte-check" ];
    };
}
