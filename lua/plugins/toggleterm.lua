return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = function()
      return {
        size = 55,
        direction = "vertical",
        open_mapping = [[<c-t>]],
        insert_mapping = false,
        winbar = {
          enabled = true,
        },
      }
    end,
  },
}
