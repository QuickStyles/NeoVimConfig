local builtin = require('telescope.builtin')
local sorters = require('telescope.sorters')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup {
  defaults = {
    sorter = sorters.get_fzy_sorter(),
    file_ignore_patterns = { "node_modules", "dist" }
  }
}
