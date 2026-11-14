return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- Abilita Treesitter per una maggiore precisione
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
        })
    end
}
