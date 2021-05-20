" Lightline config
set noshowmode
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filename', 'readonly', 'gitbranch', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ 'tab_component_function': {
      \   'tabnum': 'LightlineWebDevIcons',
      \ },
      \ 'colorscheme': 'onedark',
      \ }

let g:lightline.tabline_separator = { 'left': ' ', 'right': ' ' }
let g:lightline.tabline_subseparator = { 'left': '|', 'right': '|' }

function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  let l:bufname = bufname(l:bufnr)
  if l:bufname =~ "\\."
    if l:bufname =~ "/"
      let l:bufname = split(l:bufname, "/")[-1]
    endif
    let l:bname = split(l:bufname, "\\.")
    if len(l:bname) < 2
      let l:x = luaeval("require'nvim-web-devicons'.get_icon('" . l:bname[0] . "', '')")
      return l:x
    endif
    let l:filename = l:bname[0]
    let l:filetype = l:bname[1]
    let l:x = luaeval("require'nvim-web-devicons'.get_icon('" . l:filename . "', '" . l:filetype . "')")
    return l:x
  endif
  let l:x = luaeval("require'nvim-web-devicons'.get_icon('" . l:bufname . "', '')")
  return l:x
endfunction
