return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
        require("neo-tree").setup({
            window = {
                width = 25, -- Imposta qui la larghezza fissa
            },
        })

        vim.keymap.set('n', '<C-t>', ':Neotree filesystem reveal left toggle<CR>', {})
        vim.keymap.set('n', '<C-s>', ':Neotree float toggle<CR>', {})
        vim.keymap.set('n', '<C-i>', ':Neotree focus <CR>', {})
    end
}

