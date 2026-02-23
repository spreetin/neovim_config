{ pkgs, lib, ... }:
{
  config.vim = {
    viAlias = true;
    vimAlias = true;
    autocomplete = {
      enableSharedCmpSources = true;
      blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
        setupOpts = {
          keymap = {
            preset = "super-tab";
            "<C-CR>" = [
              "select_and_accept"
              "fallback"
            ];
          };
          fuzzy.implementation = "prefer_rust";
          signature.enabled = true;
          sources = {
            default = [
              "lsp"
              "path"
              "snippets"
              "buffer"
              "ripgrep"
            ];
          };
        };
        sourcePlugins.ripgrep.enable = true;
      };
    };
    autopairs = {
      nvim-autopairs.enable = true;
    };
    binds = {
      cheatsheet.enable = true;
      hardtime-nvim.enable = true;
      whichKey = {
        enable = true;
        register = {
          "<leader>b" = " Buffers";
          "<leader>c" = " Code";
          "<leader>d" = " Debug";
          "<leader>f" = " Find";
          "<leader>g" = " Git/Comments";
          "<leader>l" = " LSP";
          "<leader>m" = "󰨁 Minimap";
          "<leader>s" = " Search";
          "<leader>u" = " Clear";
          "<leader>x" = "󰁨 Trouble";
        };
        setupOpts = {
          preset = "modern";
          show_keys = true;
        };
      };
    };
    clipboard = {
      enable = true;
      providers = {
        wl-copy.enable = true;
        xclip.enable = true;
      };
      registers = "unnamedplus";
    };
    comments.comment-nvim.enable = true;
    dashboard.dashboard-nvim.enable = true;
    debugger = {
      nvim-dap = {
        enable = true;
        ui = {
          enable = true;
          autoStart = true;
        };
        sources = { }; # TODO look into
      };
    };
    diagnostics = {
      enable = true;
      nvim-lint = {
        enable = true;
      };
    };
    extraPackages = with pkgs; [
      bat
      fd
      fzf
      gcc
      clang
      curl
      git
      haskell-language-server
      haskellPackages.hoogle
      haskellPackages.fast-tags
      haskellPackages.haskell-debug-adapter
      haskellPackages.ghci-dap
      nodePackages.nodejs
      #tree-sitter
      ghostscript
      texliveBasic
      mermaid-cli
      ripgrep
      rust-analyzer
      lldb
      sqlite
      yazi
      viu
      chafa
    ];
    extraPlugins = { };
    filetree = {
      neo-tree.enable = true;
    };
    formatter = {
      conform-nvim = {
        enable = true;

      };
    };
    fzf-lua.enable = true;
    git = {
      enable = true;
      neogit.enable = true;
    };
    languages = {
      # Default options
      enableDAP = true;
      enableFormat = true;
      enableTreesitter = true;

      # Languages
      assembly.enable = true;
      bash.enable = true;
      clang.enable = true;
      css.enable = true;
      go.enable = true;
      haskell.enable = true;
      html.enable = true;
      java.enable = true;
      json.enable = true;
      lua.enable = true;
      markdown = {
        enable = true;
        extensions.markview-nvim = {
          enable = true;
          setupOpts = {
            preview.icon_provider = "devicons";
          };
        };
      };
      nix = {
        enable = true;
        extraDiagnostics.enable = true;
        format.type = [ "nixfmt" ];
        lsp.servers = [ "nixd" ];
      };
      python.enable = true;
      qml.enable = true;
      ruby.enable = true;
      rust = {
        enable = true;
        extensions.crates-nvim.enable = true;
      };
      sql.enable = true;
      svelte = {
        enable = true;
        extraDiagnostics.enable = true;
      };
      tailwind.enable = true;
      ts = {
        enable = true;
        extensions.ts-error-translator.enable = true;
        extraDiagnostics.enable = true;
      };
      yaml.enable = true;
    };
    lazy.enable = true;
    lineNumberMode = "relNumber";
    lsp = {
      enable = true;
      formatOnSave = true;
      inlayHints.enable = true;
      lightbulb.enable = true;
      lspconfig.enable = true;
      #lspSignature.enable = true;
      lspkind.enable = true;
      nvim-docs-view.enable = true;
      otter-nvim = {
        enable = true;
        setupOpts = {
          handle_leading_whitespace = true;
        };
      };
      trouble.enable = true;
    };
    maps = {
      command = { };
      insert = { };
      normal = {
        "<C-Up>".action = ":resize -2<CR>";
        "<C-Down>".action = ":resize +2<CR>";
        "<C-Left>".action = ":vertical resize -2<CR>";
        "<C-Right>".action = ":vertical resize +2<CR>";
        "<leader>t" = {
          action = ":ToggleTerm<CR>";
          desc = "Toggle Terminal";
        };
        "<F4>" = {
          action = "<cmd>ClangdSwitchSourceHeader";
          desc = "Switch Header/Source";
        };
      };
      visual = {
        "<".action = "<gv";
        ">".action = ">gv";
      };
    };
    mini = {
      ai = {
        enable = true;
        setupOpts = {
          n_lines = 500;
          search_method = "cover_or_next";
        };
      };
      bufremove.enable = true;
      comment.enable = true;
      icons.enable = true;
      indentscope.enable = true;
      pairs.enable = true;
      surround = {
        enable = true;
        setupOpts.n_lines = 100;
      };
    };
    minimap = {
      codewindow = {
        enable = true;
      };
    };
    notify = {
      nvim-notify = {
        enable = true;
      };
    };
    options = {
      autoindent = true;
      autoread = true;
      autowrite = false;
      backspace = "indent,eol,start";
      encoding = "UTF-8";
      expandtab = true;
      hlsearch = true;
      incsearch = true;
      ignorecase = true;
      mouse = "a";
      number = true;
      shiftwidth = 2;
      signcolumn = "yes";
      softtabstop = 2;
      splitbelow = true;
      splitright = true;
      tabstop = 2;
      termguicolors = true;
      writebackup = false;
    };
    preventJunkFiles = true;
    projects = { };
    searchCase = "smart";
    session = { };
    snippets = { };
    #spellcheck = {
    #  enable = true;
    #  languages = [
    #    "en"
    #    "de"
    #    "sv"
    #  ];
    #  programmingWordlist.enable = true;
    #};
    statusline.lualine.enable = true;
    syntaxHighlighting = true;
    tabline = {
      nvimBufferline.enable = true;
    };
    telescope = {
      enable = true;
      extensions = [
        {
          name = "fzf";
          packages = [ pkgs.vimPlugins.telescope-fzf-native-nvim ];
          setup = {
            fzf = {
              fuzzy = true;
            };
          };
        }
      ];
    };
    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
      lazygit.package = pkgs.lazygit;
    };
    theme = {
      enable = true;
      name = lib.mkForce "catppuccin";
      style = "mocha";
    };
    treesitter = {
      enable = true;
      addDefaultGrammars = true;
      autotagHtml = true;
      context.enable = true;
      fold = true;
      highlight.enable = true;
      indent.enable = true;
      textobjects.enable = true;
    };
    ui = {
      illuminate.enable = true;
      modes-nvim.enable = true;
      noice.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.colorcolumn = "100";
      };
    };
    undoFile = {
      enable = true;
      path = lib.mkLuaInline "vim.fn.stdpath('state') .. '/undo'";
    };
    utility = {
      direnv.enable = true;
      icon-picker.enable = true;
      images = {
        image-nvim = {
          enable = true;
          setupOpts.backend = "kitty";
        };
      };
      mkdir.enable = true;
      motion = {
        flash-nvim.enable = true;
      };
      nix-develop.enable = true;
      snacks-nvim = {
        enable = true;
        setupOpts = {
          bigfile.enabled = true;
          explorer.enabled = true;
          indent.enabled = true;
          input.enabled = true;
          notifier.enabled = true;
          picker.enabled = true;
          scope.enabled = true;
          scroll.enabled = true;
          statuscolumn.enabled = true;
          words.enabled = true;
        };
      };
      surround.enable = true;
      undotree.enable = true;
      yazi-nvim.enable = true;
    };
    visuals = {
      fidget-nvim.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
      nvim-cursorline = {
        enable = true;
        setupOpts.cursorword.enable = true;
      };
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
    };
  };
}
