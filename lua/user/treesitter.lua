local status_ok, telescope = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- Only use maintained parsers
  ignore_install = { "phpdoc" }, -- required until issue https://github.com/claytonrcarter/tree-sitter-phpdoc/issues/15 is closed

  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

