{
  flake.modules.neovim."lang_cpp" = {
    lsp.servers = {
      clangd.enable = true;
      cmake.enable = true;
    };
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
        action = "<cmd>ClangdSymbolInfo<CR>";
        options.desc = "Show symbol info (clangd)";
      }
      {
        mode = "n";
        key = "<leader>gt";
        action = "<cmd>ClangdTypeHierarchy<CR>";
        options.desc = "Show type hierarchy (clangd)";
      }
    ];
    plugins = {
      clangd-extensions.enable = true;
      cmake-tools.enable = true;
      conform-nvim.settings.formatters_by_ft = {
        cmake = [ "cmake_format" ];
        cpp = [ "clang_format" ];
      };
      lint.lintersByFt = {
        cmake = [ "cmakelint" ];
        cpp = [
          "cppcheck"
          "clazy"
        ];
      };
    };
  };
}
