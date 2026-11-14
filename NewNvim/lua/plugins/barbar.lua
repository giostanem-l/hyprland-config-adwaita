return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function() 
    vim.g.barbar_auto_setup = false 
  end,
  opts = {
    animation = true,
    -- Gestione automatica dello spazio sopra la sidebar
    sidebar_filetypes = {
      -- Se usi Neo-tree
      ['neo-tree'] = {text = '', event = 'BufWipeout'},
    },
  },
  config = function(_, opts)
    require('barbar').setup(opts)
    
    local map = vim.keymap.set
    local opts_map = { noremap = true, silent = true }

    -- 1. Passare tra le schede con Ctrl + Tab e Ctrl + Shift + Tab
    map('n', '<C-Tab>', '<Cmd>BufferNext<CR>', opts_map)
    map('n', '<C-S-Tab>', '<Cmd>BufferPrevious<CR>', opts_map)

    -- 2. Passare a una scheda specifica con Alt + numero
    map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts_map)
    map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts_map)
    map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts_map)
    map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts_map)
    map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts_map)
    map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts_map)
    map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts_map)
    map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts_map)
    map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts_map)
    map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts_map)

    -- 3. Chiudere la scheda con Alt + w
    map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts_map)
  end,
  version = '^1.0.0',
}
