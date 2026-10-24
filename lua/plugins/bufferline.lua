return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                offsets = {
                     {
                         filetype = "NvimTree",
                         text = "File Explorer",
                         text_align = "center",
                         separator = true
                     },
                 },
            },
        })
    end,
}
