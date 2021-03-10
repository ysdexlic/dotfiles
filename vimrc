set encoding=utf-8

" Leader
let mapleader = " "

set backspace=2     " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50      " number of cmd line history to remember
set ruler           " show the cursor position all the time
set textwidth=80
set colorcolumn=+1
set showcmd         " display incomplete commands
set nomodeline      " Disable modelines as a security precaution
set modelines=0
set mouse=nv        " Allows mouse integration

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

" Theme
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

set termguicolors
set background=dark
set guifont=FiraCode\ Nerd\ Font\ Mono:h15
let g:dwarfcolor = 'iron'
let g:dwarf_terminal_italics = 1
let g:onedark_terminal_italics = 1
" color dwarf
color onedark

" Custom search highlight color
highlight Search cterm=NONE ctermbg=237 ctermfg=NONE guibg=#3E4452 guifg=NONE


augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  autocmd BufRead,BufNewFile dotrc set filetype=toml
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint,prettier,babel}rc set filetype=json
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
  autocmd BufRead,BufNewFile aliases.local,zshrc.local,*/zsh/configs/*,.env*.local set filetype=sh
  autocmd BufRead,BufNewFile gitconfig.local set filetype=gitconfig
  autocmd BufRead,BufNewFile tmux.conf.local set filetype=tmux
  autocmd BufRead,BufNewFile vimrc.local set filetype=vim
augroup END

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Sets real time plugin sourcing
" 0 = off
" 1 = on
let g:plugin_develop_mode = 0

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=0
set shiftround
set expandtab

" Always show tabs
set showtabline=2

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Numbers
set number
set numberwidth=5
set relativenumber

" Registers
set clipboard=unnamedplus

" Set tags for vim-fugitive
set tags^=.git/tags

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=vertical

" Set spellfile to location that is guaranteed to exist
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

"+---------------------------------+',
"|             keymaps             |',
"+---------------------------------+',

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Map Ctrl + p to open fuzzy find (FZF)
nnoremap <silent> <C-p> :FZF<cr>

command! -bang Dotfiles call fzf#vim#files('~/dotfiles', <bang>0)

" Find in working directory (without searching filenames)
" Added ' to search for exact match
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
nnoremap <silent> <C-f> :Ag<CR>'

" Replace without updating register
vnoremap <leader>p "_dp
vnoremap <leader>P "_dP

" Dotfiles mappings
nnoremap <silent> <leader>se :Dotfiles<cr>
nnoremap <silent> <leader>ss :tabe ~/dotfiles/vimrc<CR>
nnoremap <silent> <leader>so :so ~/dotfiles/vimrc<CR>
" nnoremap <silent> <leader>so :so %<cr>

" Remove highlight & clear status bar
nnoremap <silent> <ESC><ESC> :nohl <bar> :echo <CR>

" Alt/Option backspace
inoremap <A-BS> <C-W>
cnoremap <A-BS> <C-W>

" Alt/Option arrows
inoremap <M-b> <S-Left>
inoremap <M-f> <S-Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>

" Switch between tabs using numbers
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>
nnoremap <leader>t gt
nnoremap <leader>T gT
nnoremap <S-Right> gt
nnoremap <S-Left> gT

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Get off my lawn
nnoremap <silent> <Left> :echoe "Use h"<CR>
nnoremap <silent> <Right> :echoe "Use l"<CR>
nnoremap <silent> <Up> :echoe "Use k"<CR>
nnoremap <silent> <Down> :echoe "Use j"<CR>

" Search and replace
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Window splits
nnoremap <leader>\ :vsp<CR>
nnoremap <leader><bar> :sp<CR>

" Git
nnoremap <silent><leader>gs :vertical :G<CR>

" Commenting
function CommentInsert()
    let col = col('.')
    let line = line('.')
    let size = strwidth(getline('.'))
    Commentary
    let moved_length = strwidth(getline('.')) - size
    let new_col = col + moved_length
    if new_col < 0
        let new_col = 0
    endif
    call cursor(line, col + moved_length)
endfunction

nnoremap <silent> <C-_> :Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>
inoremap <silent> <C-_> <C-o>:call CommentInsert()<CR>

" Floaterm
nnoremap <silent> <C-a> :FloatermToggle<CR>
tnoremap <silent> <C-a> <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <C-y> <C-\><C-n>:FloatermNew<CR>
tnoremap <silent> <C-w> <C-\><C-n>:FloatermPrev<CR>
tnoremap <silent> <C-e> <C-\><C-n>:FloatermNext<CR>

" NERDTree
nmap <silent> <Leader>n <Plug>SmartNERDTree
map <silent> <C-n> <Plug>SmartNERDTree

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
