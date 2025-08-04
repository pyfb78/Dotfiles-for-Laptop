set nocompatible
filetype indent plugin on
filetype plugin on
syntax on
" If shit starts to break, delete the next line
" set ww+=<,>,h,l
set modifiable 
set mouse=a "mouse support"
set splitbelow
set splitright
" set clipboard=unnamed
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <silent> <esc> :noh<cr><esc>
autocmd FileType tex setlocal spell
au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.rkt,*.h,*.tex,*.vim,*.vimrc,*.json,*.lua,*.c
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=200000 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set linebreak

au BufNewFile,BufRead *.css,*.html,*.js,*.ts,*.jsx,*.tsx
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=200000 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set linebreak
set encoding=UTF-8

highlight Comment cterm=italic gui=italic
set laststatus=3
"set showtabline=2

" true colours

" set t_C=256

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
 endif
endif

let g:tokyonight_style = "night"
" colorscheme tokyonight
colorscheme nightfly
" colorscheme nord
" set cursorline " highlight current line
set nu rnu " relative line numbering
set clipboard+=unnamedplus " public copy/paste register
set ruler
set showcmd
set noswapfile " does't create swap files
set noshowmode
set shortmess+=c

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
" set pastetoggle=<F2> " enable paste mode

" Fixes wrapped line issues
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap <expr> $ v:count ? '$' : 'g$'
nnoremap <expr> ^ v:count ? '^' : 'g^'
nnoremap <expr> 0 v:count ? '0' : 'g0'
vnoremap <expr> j v:count ? 'j' : 'gj'
vnoremap <expr> k v:count ? 'k' : 'gk'
vnoremap <expr> $ v:count ? '$' : 'g$'
vnoremap <expr> ^ v:count ? '^' : 'g^'
vnoremap <expr> 0 v:count ? '0' : 'g0'

set breakindent
set wrapmargin=1
set formatoptions+=t
set formatoptions-=l
" clears highlights
nnoremap // :noh<return>
" moves current line down or up
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
" open vimrc in vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" update changes into current buffer
nnoremap <leader>sv :source $MYVIMRC<cr>
" enable or disable line wrapping in current buffer
nnoremap <buffer> <localleader>w:set wrap!<cr>

" blur window nvim
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
lua vim.api.nvim_set_hl(0, "TelescopeBorder", {ctermbg=220})
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
" lua vim.keymap.nnoremap { 'gx', [[:execute '!open ' . shellescape(expand('<cfile>'), 1)<CR>]] }
" nnoremap gx <CMD>execute '!open ' .. shellescape(expand('<cfile>'), v:true)<CR>
" lua vim.api.nvim_set_keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
" ```lua
" local open_command = 'xdg-open'
" if vim.fn.has('mac') == 1 then
"   open_command = 'open'
" end

" local function url_repo()
"   local cursorword = vim.fn.expand('<cfile>')
"   if string.find(cursorword, '^[a-zA-Z0-9-_.]*/[a-zA-Z0-9-_.]*$') then
"     cursorword = 'https://github.com/' .. cursorword
"   end
"   return cursorword or ''
" end

" vim.keymap.set('n', 'gx', function()
"   vim.fn.jobstart({ open_command, url_repo() }, { detach = true })
" end, { silent = true })
" ```

