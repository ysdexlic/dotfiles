" Default file browser config
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

" NERDTree config
function NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

let NERDTreeRespectWildIgnore=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeMinimalMenu = 1

function s:SmartNERDTree()
    if @% == "" || @% =~ "NERD_tree"
        NERDTreeToggle
    else
        NERDTreeFind
    endif
endfun

map <Plug>SmartNERDTree :<C-U>call <SID>SmartNERDTree()<CR>

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:WebDevIconsUnicodeDecorateFolderNodes = 1  "enables nodes
let g:DevIconsEnableFoldersOpenClose = 1 "enables different icon for expandable/not expandable icons
let g:webdevicons_conceal_nerdtree_brackets = 1

let g:NERDTreeDirArrowExpandable = "" "sets expandable character to none - hides it
let g:NERDTreeDirArrowCollapsible = ""  "sets collapsible character to none - hides it
