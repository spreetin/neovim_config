{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    nixfmt
    black
    cmake-format
    gofumpt
    rustfmt
    stylua
    vimPlugins.vim-clang-format
    kdePackages.qtdeclarative
  ];
  plugins.conform-nvim = {
    enable = true;
    settings = {
      lsp_format = "fallback";
      formatters_by_ft = {
        c = [ "clang_format" ];
        cmake = [ "cmake_format" ];
        cpp = [ "clang_format" ];
        css = [ "prettierd" ];
        go = [ "gofumpt" ];
        haskell = [ "hlindent" ];
        html = [ "prettierd" ];
        javascript = [ "prettierd" ];
        json = [ "prettierd" ];
        lua = [ "stylua" ];
        markdown = [ "prettierd" ];
        nix = [ "nixfmt" ];
        python = [ "black" ];
        qml = [ "qmlformat" ];
        rust = [ "rustfmt" ];
        yaml = [ "prettierd" ];
      };
      format_on_save = ''
        {
          timeout_ms = 200,
          lsp_fallback = true
        }
      '';
    };
  };
}
