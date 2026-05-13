{
  flake.modules.neovim.common =
    { pkgs, ... }:
    {

      withRuby = false;
      extraPackages = with pkgs; [
        ast-grep
        curl
        fzf
        git
        lazygit
        ripgrep
      ];
      colorschemes.catppuccin.enable = true;
      colorscheme = "catppuccin";
      performance = {
        byteCompileLua.enable = true;
      };
      plugins = {
        actions-preview.enable = true;
        bufferline.enable = true;
        codecompanion.enable = true;
        comment.enable = true;
        dashboard.enable = true;
        dial.enable = true;
        flash.enable = true;
        friendly-snippets.enable = true;
        gitsigns.enable = true;
        grug-far.enable = true;
        illuminate.enable = true;
        inc-rename.enable = true;
        indent-blankline.enable = true;
        lazygit.enable = true;
        lualine.enable = true;
        lz-n = {
          enable = true;
          autoLoad = true;
        };
        noice.enable = true;
        notify.enable = true;
        nui.enable = true;
        nvim-autopairs.enable = true;
        #nvim-snippets.enable = true;
        nvim-surround.enable = true;
        persistence.enable = true;
        spectre.enable = true;
        undotree.enable = true;
        web-devicons.enable = true;
      };
    };
}
