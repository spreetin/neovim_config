{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    nixfmt
    black
    cmake-format
    gofumpt
    #haskellPackages.hindent
    prettier
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
        css = [ "prettier" ];
        go = [ "gofumpt" ];
        haskell = [ "hlindent" ];
        html = [ "prettier" ];
        javascript = [ "prettier" ];
        json = [ "prettier" ];
        lua = [ "stylua" ];
        markdown = [ "prettier" ];
        nix = [ "nixfmt" ];
        python = [ "black" ];
        qml = [ "qmlformat" ];
        rust = [ "rustfmt" ];
        yaml = [ "prettier" ];
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
