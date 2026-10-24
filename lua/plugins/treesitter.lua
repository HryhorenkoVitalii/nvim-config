return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,          -- ленивую загрузку плагин не поддерживает
  build = ':TSUpdate',
  config = function()
    local languages = { 'rust', 'javascript', 'lua', 'python' }
    require('nvim-treesitter').install(languages)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = languages,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
