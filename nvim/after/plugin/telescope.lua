local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', function()
    builtin.find_files() -- Look for files in the workspace
end, {})
