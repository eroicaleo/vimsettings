set hlsearch
set ai
set ic

set ruler

syntax on

set <F4>=<C-v><F4>
set <F2>=<C-v><F2>

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
end

map <silent><F4> :tabnext<cr>
map <silent><F3> :tabprevious<cr>
"nmap <C-F4> :wincmd w<cr>
nmap <C-F4> <C-W>w
map <silent><F5> :TlistToggle<cr>
"map <silent><F6> :NEXTCOLOR<cr>
"map <silent><F2> :PREVCOLOR<cr>
"colorscheme xoria256
colorscheme molokai
map <silent><F6> :colorscheme xoria256<cr>
map <silent><F7> :colorscheme zenburn<cr>
" map <F5> :call cursor(0, (virtcol(".")+virtcol("$"))/2)<cr>

""""""""""""""""""""""""""""
" solarized color settings "
""""""""""""""""""""""""""""
" set background=light
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

if has('gui_running')
  set guifont=Monaco\ 12
endif

set cursorline
set nocscopeverbose
set cindent

autocmd BufNewFile *.pl	0r ~/.vim/after/ftplugin/skeleton.pl
autocmd BufNewFile *.py	0r ~/.vim/after/ftplugin/skeleton.py
" Detect file type
filetype plugin indent on
