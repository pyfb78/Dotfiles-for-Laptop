augroup compileandrun
    autocmd!
    " C++
    " autocmd filetype cpp nnoremap <buffer> <f3> :w<cr>:vsplit<cr>:vert ter g++ -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result "%"<cr>i 
    " autocmd filetype cpp nnoremap <buffer> <f4> :vnew <bar> :te ./a.out <cr>i
    nnoremap <F3> :CphReceive<cr>
    autocmd filetype cpp nnoremap <buffer> <F4> :CphTest<cr>
    autocmd filetype cpp nnoremap <buffer> <F8> :w <bar>!g++ -std=c++17 -Wshadow -Wall -O2 -Wno-unused-result  "%"<cr> :vnew <bar> :te ./a.out -Wl,-stack_size,0xF0000000<cr><cr>i
    " autocmd filetype c nnoremap <buffer> <f3> :w<cr>:vsplit<cr>:vert ter gcc "%"<cr>i 
    " autocmd filetype c nnoremap <buffer> <f4> :vnew <bar> :te ./a.out <cr>i
    autocmd filetype c nnoremap <buffer> <F8> :w <bar>!gcc "%"<cr> :vnew <bar> :te ./a.out <cr><cr>i
    " autocmd filetype cpp nnoremap <buffer> <F8> :CompetitestRun <cr>
    "Python 
    autocmd Filetype python nnoremap <buffer> <F8> :RunFile<cr> i
    " autocmd Filetype python nnoremap <buffer> <f8> :w<CR>:vsplit<cr>:vert ter python3 "%"<CR>i
    " Lua
    " autocmd Filetype lua nnoremap <buffer> <f8> :w<CR>:vsplit<cr>:vert ter lua "%"<CR>i
    "Latex
    autocmd filetype tex nnoremap <buffer> <f8> :w <bar>:VimtexCompile <cr>
    autocmd filetype javascript,html nnoremap <buffer> <f8> :w <bar>:!npm start <cr>
    " autocmd filetype tex nnoremap <buffer> <f7> :w <bar>!latexmk %<cr>:w <bar>!asy -noV %:r-*.asy<cr>:w <bar> !latexmk %:r<cr><cr>:w<cr>
    "if there is an error with the first one, use the bottom one
    " autocmd filetype tex nnoremap <buffer> <f7> :w <bar>!latexmk %:r<cr>:w <bar>!asy -noV -render=0 %:r-*.asy<cr>:w <bar> !latexmk %:r<cr><cr>w<cr>
    " Java
    " autocmd filetype java nnoremap <buffer> <f3> :w<cr>:vsplit<cr>:vert ter javac "%"<cr>i 
    " autocmd filetype java nnoremap <buffer> <f4> :vnew <bar> :te java "%:h" <cr>i
    " autocmd filetype java nnoremap <buffer> <f4> :!java -cp %:p:h %:t:r <cr> i
    " autocmd filetype java nnoremap <buffer> <F8> :w <bar>!javac "%"<cr> :vnew <bar> :te java "%:h" <cr><cr>i
    " autocmd filetype markdown nnoremap <buffer>  :w <bar>:call Compile()<cr><cr>:call Preview()<cr><cr><cr>
    " Godot
    " autocmd filetype python nnoremap <buffer> <F1> :w <bar> !manim -s -qk -p %<cr>
    autocmd Filetype python nnoremap <buffer> <f1> :w<CR>:vsplit<cr>:vert ter manim -s -qk -p "%"<CR>i
    
    autocmd Filetype python nnoremap <buffer> <f2> :w<CR>:vsplit<cr>:vert ter manim -qk -p "%"<CR>i

    autocmd Filetype cpp inoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i
    
    autocmd Filetype hpp inoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i

    autocmd Filetype h inoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i

    autocmd Filetype cpp nnoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i
    
    autocmd Filetype hpp nnoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i

    autocmd Filetype h nnoremap <buffer> <leader>m <esc>:w<CR>:vsplit<cr>:vert ter pio device monitor<CR>i

augroup END

nnoremap <buffer> <F8> :Run<cr>
func! GodotSettings() abort
    setlocal foldmethod=expr
    setlocal tabstop=4
    nnoremap <buffer> <F9> :GodotRunLast<CR>
    nnoremap <buffer> <F10> :GodotRun<CR>
    nnoremap <buffer> <F11> :GodotRunCurrent<CR>
    nnoremap <buffer> <F12> :GodotRunFZF<CR>
endfunc
augroup godot | au!
    au FileType gdscript call GodotSettings()
augroup end
