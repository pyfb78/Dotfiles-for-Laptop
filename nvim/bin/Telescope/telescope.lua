require("telescope").setup {
    defaults = {
        preview=false,
        preview = {
            treesitter = false
        },
    prompt_prefix = " ",
    selection_caret = "󱞪 ",
    sorting_strategy = "ascending",
    color_devicons = true,
    layout_config = {
      prompt_position = "top",
      horizontal = {
        width_padding = 0.04,
        height_padding = 0.1,
        preview_width = 0.6,
      },
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.5,
      },
    },
    dynamic_preview_title = true,
  },
}
-- require('telescope').load_extension('gh')
require('telescope').load_extension('env')
require('telescope').load_extension('media_files')
require('telescope').load_extension('fzf')
require("telescope").load_extension("notify")
