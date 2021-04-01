" Ag - The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in fzf for listing files. Lightning fast and respects .gitignore
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'
endif

" FZF
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.75, 'yoffset': 0.5 } }
let g:fzf_colors = { 'border': ['fg', 'Comment'] }
let $FZF_DEFAULT_OPTS='--reverse --preview "bat --style=numbers,changes --color=always {}"'
