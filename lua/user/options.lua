local options = {
	backup = false,            -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  cmdheight = 2,             -- more space in the neovim command line for displaying messages
	fileencoding = "utf-8",    -- the encoding written to a file
  hlsearch = true,           -- highlight all matches on previous search patterns
	showtabline = 2,           -- always show tabs
  smartcase = true,          -- smart case
  smartindent = true,        -- make indenting smarter again
	swapfile = false,          -- creates a swapfile
  ignorecase = true,         -- ignore case in search patterns
	expandtab = true,          -- convert tabs to spaces
  shiftwidth = 2,            -- the number of spaces inserted for each indentation
  tabstop = 2,               -- insert 2 spaces for a tab
  cursorline = true,         -- highlight the current line
  number = true,             -- set numbered lines
  numberwidth = 4,           -- set number column width to 4 {default 2}
	relativenumber = false,    -- set relative numbered lines
	wrap = false,              -- display lines as one long line
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
