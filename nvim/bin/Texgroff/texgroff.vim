" " tex groff vim
" let mapleader="\\"

" " Call compile
" " Open the PDF from /tmp/
" function! Preview()
"         :call Compile()<CR><CR>
"         execute "! zathura /tmp/op.pdf &"
" endfunction

" " [1] Get the extension of the file
" " [2] Apply appropriate compilation command
" " [3] Save PDF as /tmp/op.pdf
" function! Compile()
"         let extension = expand('%:e')
"         if extension == "ms"
"                 execute "! groff -ms % -T pdf > /tmp/op.pdf"
"         elseif extension == "tex"
"                 execute "! pandoc -f latex -t latex % -o /tmp/op.pdf"
"         elseif extension == "md"
"                 execute "! pandoc % -s -o /tmp/op.pdf"
"         endif
" endfunction

" " map \ + p to preview
" noremap <leader>p :call Preview()<CR><CR><CR>

" " map \ + q to compile
" noremap <leader>q :call Compile()<CR><CR>
