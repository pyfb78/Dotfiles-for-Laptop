-- local gps=require("nvim-gps")
-- local status = require'nvim-spotify'.status
-- status:start()
local wpm = require("wpm")
local function arduino_status()
  local ft = vim.api.nvim_buf_get_option(0, "ft")
  if ft ~= "arduino" then
    return ""
  end
  local port = vim.fn["arduino#GetPort"]()
  local line = string.format("[%s]", vim.g.arduino_board)
  if vim.g.arduino_programmer ~= "" then
    line = line .. string.format(" [%s]", vim.g.arduino_programmer)
  end
  if port ~= 0 then
    line = line .. string.format(" (%s:%s)", port, vim.g.arduino_serial_baud)
  end
  return line
end
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    section_separators = '', component_separators = '|',
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'coc'}}},
    lualine_c = {'filename'},
    -- lualine_c = {
    --     {'filename', status.listen},
	-- },
    -- lualine_c = {'filename',status.listen,cava_comp},
    -- lualine_x = {wpm.wpm,wpm.historic_graph, 'fileformat', 'filetype'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename',arduino_status()},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'nvim-tree','fugitive'}
  -- extensions = {'nvim-tree'}
}




