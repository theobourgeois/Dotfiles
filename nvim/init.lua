require("theo")

vim.opt.tabstop = 2  
vim.opt.shiftwidth = 2
vim.opt.expandtab = true     
vim.opt.smartindent = true  
vim.opt.autoindent = true
vim.opt.termguicolors = true
-- init.lua or a separate configuration file
require("catppuccin").setup({
    flavour = "mocha", -- or "latte", "macchiato", "frappe" based on your preference
    transparent_background = true, -- Enable transparency
    integrations = {
        -- Add integrations here if needed, like treesitter, nvim-tree, etc.
    },
})

-- Set the colorscheme
vim.cmd.colorscheme("catppuccin")

-- Additional transparency settings for specific UI elements
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })




