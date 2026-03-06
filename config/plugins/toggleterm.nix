{
  plugins.toggleterm.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = ":ToggleTerm<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Toggle terminal";
      };
    }
  ];
}
