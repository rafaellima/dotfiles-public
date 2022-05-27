if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
    config = {
      ruby = '# %s'
    }
  },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "ruby",
    "go",
    "python",
    "tsx",
    "toml",
    "fish",
    "json",
    "yaml",
    "html",
    "scss"
  },
  autotag = {
    enable = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF
