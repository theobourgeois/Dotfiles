vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_create_autocmd('BufLeave', {
  group = vim.api.nvim_create_augroup('AutoCloseLocationList', {clear = true}),
  callback = function()
    vim.cmd('cclose')
  end,
})

vim.keymap.set("n", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })

vim.keymap.set("v", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })

