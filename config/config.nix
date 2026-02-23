{
  globals = {
    mapleader = " ";
    localleader = "\\";
  };
  opts = {
    completeopt = [
      "menu"
      "menuone"
      "noselect"
    ];
    mouse = "a";
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    number = true;
    relativenumber = true;
    cursorline = true;
    splitbelow = true;
    splitright = true;
    termguicolors = true;
    signcolumn = "yes";
    colorcolumn = "100";
    incsearch = true;
    hlsearch = true;
    ignorecase = true;
    smartcase = true;
    backup = false;
    writebackup = false;
    swapfile = false;
    undofile = true;
    undodir.__raw = "vim.fs.normalize('~/.vim/undodir')";
    autoread = true;
    autowrite = false;
    backspace = "indent,eol,start";
    encoding = "UTF-8";
  };
  clipboard = {
    register = "unnamedplus";
    providers = {
      xclip.enable = true;
      wl-copy.enable = true;
    };
  };
}
