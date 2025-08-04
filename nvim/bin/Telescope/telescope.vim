" Do sudo pacman -S ripgrep sqlite
" Find files using Telescope command-line sugar.
nnoremap ff :Telescope find_files hidden=false<cr>
nnoremap fg :Telescope live_grep hidden=true<cr>
nnoremap fb :Telescope buffers hidden=true<cr>
nnoremap fh :Telescope help_tags hidden=true<cr>
