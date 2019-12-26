"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yg943079/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/yg943079/.vim/')
  call dein#begin('/Users/yg943079/.vim/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/yg943079/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('kshenoy/vim-signature')
  call dein#add('shougo/unite.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('davidhalter/jedi')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('bronson/vim-visual-star-search')
  call dein#add('tpope/vim-fugitive')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

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
map <silent><F6> :NERDTreeToggle<cr>
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
  set guifont=Monaco\ 14
endif

set cursorline
set nocscopeverbose
set cindent

" autocmd BufNewFile *.pl	0r ~/.vim/after/ftplugin/skeleton.pl
" autocmd BufNewFile *.py	0r ~/.vim/after/ftplugin/skeleton.py


""""""""""""""""""""""""""""
" Make the NERDTree works better
" for me https://github.com/scrooloose/nerdtree/issues/522
""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="_"
""""""""""""""""""""""""""""
" These two options can use mouse much convinient,
" but I don't like them, I need to use mouse to copy
" https://github.com/neovim/neovim/issues/2656
" set mouse=a
" let g:NERDTreeMouseMode=3
""""""""""""""""""""""""""""

""""""""""""""""""""""""""""
" Make youcompleteme works better
""""""""""""""""""""""""""""
""""""""""""""""""""""""""""
" without this option, I cannot do
" :help <Leader>
set encoding=utf-8
let g:ycm_collect_identifiers_from_comments_and_strings = 1
""""""""""""""""""""""""""""

""""""""""""""""""""""""""""
" Make unite.vim works better for me
""""""""""""""""""""""""""""
let mapleader = ","
nnoremap <leader>f :Unite -start-insert file<CR>
nnoremap <leader>b :Unite -start-insert buffer bookmark<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>r :Unite -start-insert file_rec<CR>

""""""""""""""""""""""""""""
" Make gitgutter.vim works better for me
""""""""""""""""""""""""""""
" au VimEnter * :GitGutterDisable
" map <silent><F5> :GitGutterToggle<cr>

""""""""""""""""""""""""""""
" Make deoplete works better for me
""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

let g:python3_host_prog = '/opt/anaconda3/bin/python3'

" This abbreviation opens help in vertical right
cnoreabbrev HR vert bo h

""""""""""""""""""""""""""""
" Make vim-airline works better for me
""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

""""""""""""""""""""""""""""
" Make vim-airline works better for me
""""""""""""""""""""""""""""
echo ">^.^< 💑 >x.x<"
