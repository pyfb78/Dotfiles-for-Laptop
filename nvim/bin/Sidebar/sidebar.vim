lua << END
require("sidebar-nvim").setup({
    side="right",
    sections = {
        "git",
        "todos"
    },
})
END

nnoremap <F6> :SidebarNvimToggle<CR>
