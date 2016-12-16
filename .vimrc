"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/home/yangge/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/yangge/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'shougo/unite.vim'
NeoBundleLazy 'valloric/youcompleteme'
autocmd FileType tcl,python,verilog NeoBundleSource youcompleteme
" NeoBundle 'valloric/youcompleteme'
" NeoBundleDisable youcompleteme
NeoBundle 'airblade/vim-gitgutter'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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

autocmd BufNewFile *.pl	0r ~/.vim/after/ftplugin/skeleton.pl
autocmd BufNewFile *.py	0r ~/.vim/after/ftplugin/skeleton.py


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
au VimEnter * :GitGutterDisable
map <silent><F5> :GitGutterToggle<cr>
