
vim.opt.termguicolors = true

require("bufferline").setup({
  options = {
    mode = "buffers",     -- Show buffers (not tabs)
    numbers = "none",
    diagnostics = "nvim_lsp",
    separator_style = "thick", -- "slant", "thick", "thin", etc.
    show_buffer_close_icons = true,
    show_close_icon = false,
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "NvimTree", -- if using NvimTree or similar
        text = "File Explorer",
        highlight = "Directory",
        separator = true
      }
    }
  }
})

vim.cmd [[
  highlight TabLineFill guibg=NONE ctermbg=NONE
]]
