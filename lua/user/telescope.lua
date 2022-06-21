local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require('telescope.actions')
telescope.setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      },
      n = {
        ["q"] = actions.close
      }
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  }
}
