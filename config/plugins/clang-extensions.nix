{
  plugins.clangd-extensions.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<F4>";
      action = "<cmd>ClangdSwitchSourceHeader<CR>";
      options.desc = "Switch Header/Source";
    }
    {
      mode = "n";
      key = "<leader>gh";
      action = "<cmd>ClangdSwitchSourceHeader<CR>";
      options.desc = "Switch Header/Source (clangd)";
    }
    {
      mode = "n";
      key = "<leader>ga";
      action = "<cmd>ClangdAST<CR>";
      options.desc = "Show AST (clangd)";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>ClangdSymbolInfo";
      options.desc = "Show symbol info (clangd)";
    }
    {
      mode = "n";
      key = "<leader>gt";
      action = "<cmd>ClangdTypeHierarchy<CR>";
      options.desc = "Show type hierarchy (clangd)";
    }
  ];
}
