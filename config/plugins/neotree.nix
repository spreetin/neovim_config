{ lib, ... }:
{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        close_if_last_window = true;
        window = {
          mappings = lib.nixvim.mkRaw ''
            {
              ['f'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
              ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
              ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
            },
          '';
        };
        event_handlers = lib.nixvim.mkRaw ''
          {
            {
              event = "neo_tree_buffer_enter",
              handler = function()
                vim.cmd("highlight! Cursor blend=100")
              end,
            },
            {
              event = "neo_tree_buffer_leave",
              handler = function()
                vim.cmd("highlight! Cursor guibg=#5f87af blend=0")
              end,
            },
            {
              event = "file_open_requested",
              handler = function()
                -- auto close
                -- vim.cmd("Neotree close")
                -- OR
                require("neo-tree.command").execute({ action = "close" })
              end
            },
            {
              event = "after_render",
              handler = function(state)
                if not require("neo-tree.sources.common.preview").is_active() then
                  state.config = { use_float = true }
                  state.commands.toggle_preview(state)
                end
              end,
            },
          }
        '';
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tf";
      action = ":Neotree toggle reveal<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle file tree";
      };
    }
    {
      mode = "n";
      key = "<leader>tb";
      action = ":Neotree buffers toggle<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle buffer list";
      };
    }
    {
      mode = "n";
      key = "<leader>tg";
      action = ":Neotree git_status toggle<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle git status";
      };
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = ":Neotree document_symbols toggle<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle document symbols";
      };
    }
  ];
}
