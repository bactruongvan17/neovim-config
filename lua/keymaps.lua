local opts = {
  noremap = true,
  silent = true,
}

local keymap = vim.keymap

-- Common key
keymap.set('n', '<C-a>', 'gg<S-v>G', opts)
keymap.set('n', '<C-s>', ':w<CR>', opts)
keymap.set('i', '<C-s>', '<ESC>:w<CR>', opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Quit
keymap.set("n", "<leader>q", "<cmd>confirm q<CR>", opts)

-- Wrap/Unwrap
keymap.set("n", "<leader>w", "<cmd>lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)

-- Tabs
keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', opts)
keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', opts)
-- keymap.set('n', '<C-c>', '<cmd>BufferLinePickClose<cr>', opts)
keymap.set('n', '<leader>c', '<cmd>BufferLineCloseOthers<cr>', opts)
-- Lazy
keymap.set('n', 'L', '<cmd>Lazy<CR>', opts)

keymap.set('n', '<leader>cf', vim.lsp.buf.format, opts)
