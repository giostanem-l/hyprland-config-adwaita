return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "pyright",
                    "qmlls",
                    "rust_analyzer",
                    "html",
                    "cssls",
                    "intelephense",
                    "gopls",
                    "ts_ls",
                },
                -- Abilita automaticamente tutti i server tramite vim.lsp.enable(),
                -- escludendo rust_analyzer che viene gestito da rustaceanvim
                automatic_enable = {
                    exclude = { "rust_analyzer" },
                },
            })

            -- 1. Riduciamo il tempo di attesa per CursorHold
            vim.opt.updatetime = 300

            -- 2. Autocomando per mostrare la diagnostica all'hover del cursore
            vim.api.nvim_create_autocmd("CursorHold", {
                callback = function()
                    vim.diagnostic.open_float(nil, {
                        focusable = false,
                        close_events = { "CursorMoved", "CursorMovedI", "BufLeave", "InsertEnter" },
                        border = "rounded",
                        source = "always",
                        prefix = " ",
                        scope = "cursor",
                    })
                end,
            })

            -- 3. Keymaps attivati solo quando un LSP si collega al buffer
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local opts = { buffer = args.buf }
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
                end,
            })
        end,
    },
}
