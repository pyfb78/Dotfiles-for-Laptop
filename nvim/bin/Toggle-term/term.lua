-- 1) your ToggleTerm setup – we’ll disable its built‐in open_mapping
require("toggleterm").setup({
  size          = function() return math.floor(vim.o.columns * 0.5) end,  -- right‐half of the screen
  direction     = "vertical",
  open_mapping  = nil,       -- we do our own
  persist_size  = true,
  autochdir     = false,     -- we’ll handle cwd ourselves
  start_in_insert = true,
})

-- 2) helper to open a vertical term in this buffer’s folder
local function open_term_here()
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname == "" then
    print("No file in this buffer → can't infer a directory.") 
    return
  end

  -- get the directory of the file, escape it for safety
  local dir = vim.fn.fnamemodify(bufname, ":h")
  local esc_dir = vim.fn.shellescape(dir)

  -- build & run the ToggleTerm command
  local cols = math.floor(vim.o.columns * 0.5)
  vim.cmd(string.format(
    "ToggleTerm direction=vertical size=%d dir=%s",
    cols,
    esc_dir
  ))
end

-- 3) bind it to tt
vim.keymap.set("n", "tt", open_term_here, { noremap = true, silent = true })

