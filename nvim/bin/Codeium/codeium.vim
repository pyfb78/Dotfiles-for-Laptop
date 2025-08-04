" imap <script><silent><nowait><expr> <C-g> codeium#Accept()
inoremap <silent><expr> <Right>
  \ exists('b:_codeium_completions') && !empty(get(b:_codeium_completions, 'items', [])) ?
  \ codeium#Accept() : "\<Right>"
inoremap <silent><expr> <Left>
  \ exists('b:_codeium_completions') && !empty(get(b:_codeium_completions, 'items', [])) ?
  \ codeium#Clear() : "\<Left>"
imap <Up>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <Down>   <Cmd>call codeium#CycleCompletions(-1)<CR>
let g:codeium_disable_bindings = 1
let g:codeium_no_map_tab = v:true
