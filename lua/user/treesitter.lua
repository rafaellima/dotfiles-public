local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter.setup {
  ensure_installed = "all", -- Only use maintained parsers
  ignore_install = { "phpdoc" }, -- required until issue https://github.com/claytonrcarter/tree-sitter-phpdoc/issues/15 is closed

  highlight = {
    enable = true,
  },
  endwise = {
    enable = true
  }
}

