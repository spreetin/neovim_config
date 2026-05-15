{
  flake.modules.neovim."lang_markdown" = {
    lsp.servers.markdown_oxide.enable = true;
    plugins = {
      conform-nvim.settings.formatters_by_ft.markdown = [ "prettier" ];
      lint.lintersByFt.markdown = [ "markdownlint" ];
    };
  };

  flake.modules.neovim."lang_markdown_preview" = {
    plugins.markdown-preview.enable = true;
    keymaps = [
      {
        mode = "n";
        key = "<leader>pm";
        action = ":MarkdownPreviewToggle<CR>";
        options = {
          silent = true;
          noremap = true;
          desc = "Markdown preview";
        };
      }
    ];
  };
}
