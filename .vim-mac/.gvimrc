if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
"      set guifont=Inconsolata\ for\ Powerline:h15
"      set guifont=Monaco:h16
       set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h18
       colorscheme twilight
  endif
set backspace=indent,eol,start
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-vinegar' 
Bundle 'scrooloose/nerdtree' 
Bundle 'scrooloose/syntastic' 
Bundle 'bling/vim-airline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/Pydiction'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'altercation/vim-colors-solarized'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'tyru/open-browser.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'easymotion/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'klen/python-mode'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
"Brief help
":BundleList          - list configured bundles
":BundleInstall(!)    - install (update) bundles
":BundleSearch(!) foo - search (or refresh cache first) for foo
":BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

set nocompatible 	"Use vim defaults
set history=100         " keep 100 lines of history
set viminfo='20,\"200 	"keep a .viminfo file
syntax on               " syntax highlighting
filetype plugin on 	"use the file type plugins
filetype plugin on
filetype indent on
set dictionary=dict
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set nu
set tags+=/Library/Documents/tags
set autoindent
set smartindent
set smarttab
set smartcase
set ts=8
set tabstop=8 
set shiftwidth=4 
set softtabstop=4
set guioptions-=T
set guioptions+=eb
set virtualedit=block
set backspace=indent,eol,start
set nowrapscan
set expandtab
set nowrap
set nobackup
set nowritebackup
set noswapfile
set expandtab
set undolevels=1000
set viminfo+=n~/.vim/viminfo
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  "if isdirectory($HOME . '/.vim/undo') == 0
  "  :silent !mkdir -p ~/.vim/undo >& /dev/null
  "endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
endif
if has("persistent_undo")
  set undodir+=~/.vim/undo/
endif
set undofile
set wrapmargin=0
set textwidth=0
set formatoptions=crqwnl1
set formatoptions-=t
set showmatch
set scrolloff=2
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
map <C-S-Insert> <MiddleMouse>
map! <C-S-Insert> <MiddleMouse>

"Tabs for vim
nmap <silent> tt :tabnew<CR>
nmap <silent> [g :tabprevious<CR>
nmap <silent> ]g :tabnext<CR>
nmap <silent> [G :tabrewind<CR>
nmap <silent> ]G :tablast<CR>


" Splits for vim
nmap <silent> vv :vsp<CR>
nmap <silent> ss :sp<CR>

set splitright " When splitting vertically, split to the right
set splitbelow " When splitting horizontally, split below

"navigating between them
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Fast saving
nmap <leader>w :w!<cr>

" for tag in vim
nmap <F8> :TagbarToggle<CR>
""""""""""""""""""""""""""""""
" => Visual mode related
" """"""""""""""""""""""""""""""
" " Visual mode pressing * or # searches for the current selection
" " Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


set clipboard=autoselect
vnoremap p "_dP

"Filter out the greppings
command! -nargs=? Filter let @i='' | execute 'g/<args>/y I' | redraw | new | setlocal bt=nofile | put! I
if has('gui_running')
    let indent_guides_enable_on_vim_startup = 1 
    set cursorline
endif
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

augroup filetype_crontab
:autocmd!
:autocmd FileType crontab set backupcopy=yes
augroup END


syntax on
filetype on
filetype plugin on
filetype indent on
" syntastics setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = ">>"
let g:syntastic_warning_symbol ="!" 
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_enable_perl_checker = 1
let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_python_checkers = ['pylint']
"Airline setting
set laststatus=2
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#statusline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: {bufnr("%")}'
endif
