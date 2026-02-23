{ pkgs, ... }:
{
  extraPackages = with pkgs; [
    cmake-lint
    cppcheck
    golangci-lint
    hlint
    html-tidy
    markdownlint-cli
    nodePackages.jshint
    pylint
    yamllint
    kdePackages.qtdeclarative
  ];

  plugins.lint = {
    enable = true;
    lintersByFt = {
      c = [ "cppcheck" ];
      cmake = [ "cmakelint" ];
      cpp = [ "cppcheck" ];
      go = [ "golangcilint" ];
      haskell = [ "hlint" ];
      html = [ "tidy" ];
      javascript = [ "jshint" ];
      #json = mkIf (elem "json" cfg.languages) [ "jsonlint" ];
      lua = [ "luacheck" ];
      markdown = [ "markdownlint" ];
      nix = [ "nix" ];
      python = [ "pylint" ];
      qml = [ "qmllint" ];
      yaml = [ "yamllint" ];
    };
  };
}
