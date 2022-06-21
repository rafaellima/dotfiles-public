local status_ok, comment = pcall(require, "Comment")
if not status_ok then
  return
end

comment.setup {
  ---Add a space b/w comment and the line
  padding = true,

  ---LHS of toggle mappings in NORMAL + VISUAL mode
  toggler = {
    ---Line-comment toggle keymap
    line = 'gcc',
    ---Block-comment toggle keymap
    block = 'gbc',
  },

  opleader = {
    ---Line-comment keymap
    line = 'gc',
    ---Block-comment keymap
    block = 'gb',
  }
}
