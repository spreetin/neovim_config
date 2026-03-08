{
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
}
