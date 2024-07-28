return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.prettier,
        require("none-ls.diagnostics.eslint"),
      },
    })

    local opts = {
      noremap = true,
      silent = true,
    }
    vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, opts)
  end
}
