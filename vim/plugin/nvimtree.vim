let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_width_allow_resize = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_special_files = [] " List of filenames that gets highlighted with NvimTreeSpecialFile

autocmd BufEnter NvimTree set cursorline

function s:SmartNvimTree()
    if @% == "" || @% =~ "NvimTree"
        NvimTreeToggle
    else
        NvimTreeFindFile
    endif
endfun

map <Plug>SmartNvimTree :<C-U>call <SID>SmartNvimTree()<CR>

lua << EOF
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    vim.g.nvim_tree_bindings = {
      ["x"] = tree_cb("close_node"),
      ["<S-c>"] = tree_cb("cd"),
      ["u"] = tree_cb("dir_up"),
      ["[g"] = tree_cb("prev_git_item"),
      ["]g"] = tree_cb("next_git_item"),
      -- ["p"] = ":call RenameWithExt()<CR>",
    }
EOF

highlight NvimTreeGitDirty guifg=#E5C07B
highlight NvimTreeGitNew guifg=#98C379
let g:nvim_tree_icons = {
    \ 'git': {
    \   'unstaged': "๏",
    \   'staged': "๏",
    \   },
    \ }

" function RenameWithExt()
"   let l:node = luaeval("require'nvim-tree.lib'.get_node_at_cursor().name")

"   if l:node =~ "\\."
"     let l:names = split(l:node, "\\.")
"     if len(l:names) < 2
"       let l:len = len(l:names[0])
"       let l:str = repeat("<Left>", l:len)
"       lua require'nvim-tree'.on_keypress("rename")
"       return
"     endif
"     let l:filename = l:names[0]
"     let l:filetype = l:names[1]

"     let l:len = len(l:filetype)
"     let l:str = repeat("<Left>", l:len)
"     lua require'nvim-tree'.on_keypress("rename")

"     return
"   endif
"   let l:len = len(l:node)
"   let l:str = repeat("<Left>", l:len)
"   lua require'nvim-tree'.on_keypress("rename")
"   return
" endfun
