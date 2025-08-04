call plug#begin(stdpath('data'))
Plug 'junegunn/vim-plug'
" Plug 'L04DB4L4NC3R/texgroff.vim' 
" Plug 'vimwiki/vimwiki'
" Plug 'rcarriga/nvim-notify'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'joom/latex-unicoder.vim'
let g:coc_global_extensions = [
        \ 'coc-pyright',
        \ 'coc-texlab',
        \ 'coc-clangd',
        \ 'coc-html',
        \ 'coc-tsserver',
        \ 'coc-json',
        \ 'coc-eslint',
        \ 'coc-prettier',
        \ 'coc-tslint-plugin',
        \ 'coc-sh',
        \ 'coc-css',
        \ 'coc-lsp-wl',
        \ 'coc-java',
        \ 'coc-ltex',
        \ 'coc-lua'
        \ ]
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'trusktr/seti.vim'
" Make sure you install a font and stuff
Plug 'ryanoasis/vim-devicons'
" Install latex and stuff before
Plug 'lervag/vimtex'
Plug 'voldikss/vim-mma'
" Plug 'metakirby5/codi.vim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'jdhao/better-escape.vim'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'SmiteshP/nvim-gps'
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'Yggdroot/indentLine'
Plug 'nvim-lua/plenary.nvim'
" install ripgrep and sqlite
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" run pacaur -S fd ueberzug ffmpegthumbnailer poppler epub-thumbnailer-git fontpreview
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'LinArcX/telescope-env.nvim'
" Plug 'glepnir/dashboard-nvim'
Plug 'sidebar-nvim/sidebar.nvim' 
Plug 'mfussenegger/nvim-dap'
" Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'
" Make sure you have git and git-cli and lazy git
" Plug 'nvim-telescope/telescope-github.nvim'
" Plug 'pwntester/octo.nvim'
Plug 'kdheepak/lazygit.nvim'
Plug 'lewis6991/gitsigns.nvim'
" for html tag completion
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'windwp/nvim-ts-autotag'
" Plug 'floobits/floobits-neovim'
" make sure u get the chrome extension for cphelper
Plug 'p00f/cphelper.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'shaunsingh/nord.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'mboughaba/i3config.vim'
Plug 'andweeb/presence.nvim'
" Plug 'feline-nvim/feline.nvim'
Plug 'ghillb/cybu.nvim'
" Plug 'Pocco81/AutoSave.nvim'
Plug 'max397574/colortils.nvim'
Plug 'CRAG666/code_runner.nvim'
" Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'makerj/vim-pdf'
Plug 'KadoBOT/nvim-spotify', { 'do': 'make' }
" ITS THIS ONE
" Plug 'habamax/vim-godot'
" Plug 'calviken/vim-gdscript3'
" Plug 'windwp/windline.nvim'
Plug 'kevinhwang91/nvim-ufo'
Plug 'kevinhwang91/promise-async'
Plug 'miyakogi/seiya.vim'
Plug 'tpope/vim-dispatch'
Plug 'Pocco81/auto-save.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
" Plug 'romgrk/barbar.nvim'
" Plug 'jackMort/ChatGPT.nvim'
" Plug 'stevearc/vim-arduino'
" Plug 'normen/vim-pio'
" Plug 'huy-hng/anyline.nvim'
Plug 'jcdickinson/wpm.nvim'
" Plug 'OmniSharp/omnisharp-vim', {'do': ':OmniSharpInstall'}
Plug 'stevearc/oil.nvim'
" Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'nvim-pack/nvim-spectre'
Plug 'MunifTanjim/nui.nvim'
Plug '3rd/image.nvim'
" Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'benlubas/molten-nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'frabjous/knap'
Plug 'anurag3301/nvim-platformio.lua'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'sphamba/smear-cursor.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Plug 'amitds1997/remote-nvim.nvim'
Plug 'GCBallesteros/jupytext.nvim'
" Plug 'jeryldev/pyworks.nvim'
set spelllang=en_us
call plug#end()
