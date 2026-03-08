{ lib, ... }:
{
  autoCmd = [
    {
      callback = lib.nixvim.mkRaw ''
        function()
          local mode_names = {
            n = "NORMAL",
            i = "INSERT",
            v = "VISUAL",
            V = "V-LINE",
            ["\22"] = "V-BLOCK",
            c = "COMMAND",
            R = "REPLACE",
            t = "TERMINAL",
          }
          local m = vim.fn.mode()
          local mode = mode_names[m] or m
          local filename = vim.fn.expand("%:t")
          vim.opt.titlestring = string.format("nvim %s | %s", filename, mode)
        end
      '';
      desc = "Update titlestring";
      event = [
        "ModeChanged"
        "BufEnter"
        "BufWritePost"
      ];
    }
  ];
}
