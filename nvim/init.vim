" python path
let g:python3_host_prog = '/Users/pavan/miniforge3/bin/python3' " or your system Python path

source $HOME/.config/nvim/bin/Plugins/plugins.vim
lua require('impatient')
source $HOME/.config/nvim/bin/Settings/settings.vim
source $HOME/.config/nvim/bin/Code-run/run.vim
luafile $HOME/.config/nvim/bin/Code-run/coderunner.lua
source $HOME/.config/nvim/bin/Coc-nvim/coc.vim
source $HOME/.config/nvim/bin/Latex/latex.vim
" luafile $HOME/.config/nvim/bin/Barbar/barbar.lua
luafile $HOME/.config/nvim/bin/Bufferline/bufferline.lua
" luafile $HOME/.config/nvim/bin/Lualine/gps.lua
luafile $HOME/.config/nvim/bin/Lualine/lualine.lua
" luafile $HOME/.config/nvim/bin/Lualine/cava/cava.lua
" luafile $HOME/.config/nvim/bin/Feline/feline.lua
" source $HOME/.config/nvim/bin/NvimTree/tree.vim
" luafile $HOME/.config/nvim/bin/NvimTree/tree.lua
" luafile $HOME/.config/nvim/bin/Windline/windline.lua
source $HOME/.config/nvim/bin/Telescope/telescope.vim
luafile $HOME/.config/nvim/bin/Telescope/telescope.lua
" source $HOME/.config/nvim/bin/Dashboard/dashboard.vim
source $HOME/.config/nvim/bin/Texgroff/texgroff.vim
source $HOME/.config/nvim/bin/Sidebar/sidebar.vim
" luafile $HOME/.config/nvim/bin/Git/octo.lua
luafile $HOME/.config/nvim/bin/Git/gitsigns.lua
source $HOME/.config/nvim/bin/Git/lazygit.vim
luafile $HOME/.config/nvim/bin/Notify/notify.lua
luafile $HOME/.config/nvim/bin/Presence/presence.lua
luafile $HOME/.config/nvim/bin/Toggle-term/term.lua
" luafile $HOME/.config/nvim/bin/Autosave/autosave.lua
luafile $HOME/.config/nvim/bin/Colortils/colortils.lua
" luafile $HOME/.config/nvim/bin/Spotify/spotify.lua
" source $HOME/.config/nvim/bin/NeoTree/neotree.vim
" luafile $HOME/.config/nvim/bin/NeoTree/neotree.lua
" luafile $HOME/.config/nvim/bin/ChatGPT/chat.lua
source $HOME/.config/nvim/bin/Arduino/arduino.vim
" luafile $HOME/.config/nvim/bin/Anyline/anyline.lua
" luafile $HOME/.config/nvim/bin/Fold/fold.lua
luafile $HOME/.config/nvim/bin/Oil/oil.lua
luafile $HOME/.config/nvim/bin/SearchReplace/spectre.lua
luafile $HOME/.config/nvim/bin/Image/image.lua
" luafile $HOME/.config/nvim/bin/Pywork/pywork.lua
" luafile $HOME/.config/nvim/bin/Hologram/hologram.lua
" source $HOME/.config/nvim/bin/Magma/magma.vim
" source $HOME/.config/nvim/bin/Codeium/codeium.vim
" lua << END
" local theme = require "theme"
" theme.init()
" END

" better escape
let g:better_escape_interval = 200
let g:better_escape_shortcut = 'fd'

" filetype.nvim
lua vim.g.did_load_filetypes = 1

" Tree sitter
lua << END
require('nvim-ts-autotag').setup({
  filetypes = { "html" , "xml","javascript","javascriptreact","typescript","typescriptreact" },
})
END
" Cp helper
let g:cpp_compile_command='g++ -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result solution.cpp -o cpp.out'

" Colorizer
lua require'colorizer'.setup()

" WPM
lua require'wpm'.setup()

" i3config highlighting
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" cybu.nvim
lua << END
require("cybu").setup()
vim.keymap.set("n", "[b", "<Plug>(CybuPrev)")
vim.keymap.set("n", "]b", "<Plug>(CybuNext)")
END

" python whitespace
" https://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim

function! <SID>StripTrailingWhitespaces()
  if !&binary && &filetype != 'diff'
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
  endif
endfun

" autocmd FileType python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" vim-polyglot has indent highlighting for some dumbass reason
let g:python_highlight_space_errors = 0


" Platformio 
lua << END
require('platformio').setup({
    lsp = "clangd" --default: ccls, other option: clangd
                 -- If you pick clangd, it also creates compile_commands.json
})

END

lua require('smear_cursor').enabled = true

" fix bufferline highlighting

hi Normal       guibg=none ctermbg=none
hi LineNr       guibg=none ctermbg=none
hi Folded       guibg=none ctermbg=none
hi NonText      guibg=none ctermbg=none
hi SpecialKey   guibg=none ctermbg=none
hi VertSplit    guibg=none ctermbg=none
hi SignColumn   guibg=none ctermbg=none
hi EndOfBuffer  guibg=none ctermbg=none


" lua << END
" require("remote-nvim").setup({
"   config_path = "/Users/pavan/.config/nvim", -- ✅ your actual config
"   copy_config = true,                        -- ✅ force copy
" })
" END
