return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      colors = { bg = "#1E1E1E" }
    })
    vim.cmd("colorscheme onedark")
  end
}
