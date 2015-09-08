if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
"      set guifont=Inconsolata\ for\ Powerline:h15
"      set guifont=Monaco:h16
       set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
       colorscheme twilight
    elseif s:uname == "Linux\n"
"       set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
        set guifont=Monospace\ 16
        colorscheme twilight
    endif
else
    set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
endif
"vundle alters the runtime environment of default filetype
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible "Required by vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let vundle manage itself
Bundle 'gmarik/vundle'

"Other Plugins
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
Bundle 'tyru/open-browser.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'easymotion/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'klen/python-mode'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Chiel92/vim-autoformat'
Bundle 'tmux-plugins/vim-tmux'
"Bundle 'tpope/vim-fugitive'
"Brief help
":BundleList          - list configured bundles
":BundleInstall(!)    - install (update) bundles
":BundleSearch(!) foo - search (or refresh cache first) for foo
":BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

set encoding=utf-8
set ffs=unix,dos,mac
set backspace=indent,eol,start
set history=1000        " keep 100 lines of history
set viminfo='20,\"200 	"keep a .viminfo file
syntax on
filetype on
filetype plugin on
filetype indent on
set dictionary=dict
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set nu                  " showing linenumber 
set tags+=/Library/Documents/tags
set autoindent
set smartindent
set smarttab
set smartcase
set ts=8
set shiftwidth=4 
set softtabstop=4
set expandtab
set guioptions-=T
set guioptions+=eb
set virtualedit=block
set backspace=indent,eol,start
set nowrapscan
set nowrap
set nobackup
set nowritebackup
set noswapfile
set expandtab
set undolevels=1000
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
"set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

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
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove
"nmap <silent> [g :tabprevious<CR>
"nmap <silent> ]g :tabnext<CR>
"nmap <silent> [G :tabrewind<CR>
"nmap <silent> ]G :tablast<CR>

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

" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
"Pymode Customization for default key binding by redefining them
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-d>"

"NERDTree
"check if no file specify open directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open nerdtree while press control n
map <C-n> :NERDTreeToggle<CR>
" close nerdtree if only one window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"
"Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"When invoked, unless a starting directory is specified, CtrlP will set its 
"local working directory according to this variable
let g:ctrlp_working_path_mode = 'ra'
"Exclude files and directories using Vim's wildignore and CtrlP's own 
"g:ctrlp_custom_ignore:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

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
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline#extensions#statusline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: {bufnr("%")}'
let g:airline_theme='zenburn'

"Python Mode Plugin
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"
