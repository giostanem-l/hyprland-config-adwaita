vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set autoindent")
vim.cmd("set linebreak")
vim.cmd("set clipboard=unnamedplus")

-- Scorciatoie per formattazione rapida in Visual Mode
local keymap = vim.keymap.set

-- Grassetto (Bold): avvolge la selezione con **
keymap("v", "<C-b>", 'c**<C-r>"**<Esc>', { desc = "Format Bold" })

-- Sottolineato (Underline): avvolge la selezione con <u></u>
keymap("v", "<C-u>", 'c<u><C-r>"</u><Esc>', { desc = "Format Underline" })

-- Corsivo/Sottolineato (Italic/Underline): avvolge la selezione con <u>** **</u>
-- Nota: nel tuo comando originale avevi messo <u>**, lo correggo per chiudere correttamente i tag
keymap("v", "<C-i>", 'c<u>**<C-r>"**</u><Esc>', { desc = "Format Underline Italic" })

-- Genera l'indice (Table of Contents) per i file Markdown
vim.keymap.set("n", "<C-j>", ":MDToc<CR>", { desc = "Markdown Table of Contents", silent = true })
