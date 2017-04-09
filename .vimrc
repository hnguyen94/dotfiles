" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off

"" Apparently important for zsh...
set encoding=utf-8
set fileencoding=utf-8
" ================ General Config ====================
set noswapfile
set cursorline
set list listchars=tab:\ \ ,trail:·
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:.,extends:❯,precedes:❮
set expandtab
set backspace=indent,eol,start
set tabstop=2
set guicursor+=i:ver100-iCursor
set shiftwidth=2
set autoindent
set history=1000
set mouse=a
set modifiable
set smartindent
set wildmenu
set laststatus=2
set guioptions-=L
set showcmd
set relativenumber
set number
set background=dark
set guifont=Menlo\ for\ Powerline:h12
set visualbell
set autoread
set hidden
set gcr=a:blinkon0              "Disable cursor blink
set mouse=a
set clipboard=unnamed


runtime macros/matchit.vim

" Vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'gmarik/vundle'

" All Plugin's
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'szw/vim-tags'
" Plugin 'kana/vim-textobj-user'
" Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tsaleh/vim-supertab'
Plugin 'groenewege/vim-less'
Plugin 'mileszs/ack.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'digitaltoad/vim-jade'
Plugin 'gregsexton/MatchTag'
Plugin 'ngmy/vim-rubocop'
Plugin 'nono/vim-handlebars'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab'
" Plugin 'tpope/vim-Obundler'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-repeat'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/SearchComplete'
Plugin 'skammer/vim-css-color'
Plugin 'henrik/vim-ruby-runner'
Plugin 'rizzatti/dash.vim'
Plugin 'tmhedberg/matchit'
Plugin 'mikewest/vimroom'
Plugin 'austintaylor/vim-indentobject'
" Set leader key
let mapleader=","

"" Map control keys to switch panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Enable auto indent
filetype plugin indent on

" Enable syntax highlighting
  syntax on

"" Ctrl + E  = Switch to previous buffer (file)
nmap <leader>e :b#<CR>

"" Crtl + S to toggle spell checking
"nmap <C-S> :set spell!<CR>

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader>vr :VimroomToggle<CR>
" Command to remap CSS in alphabetical order
nmap <leader>sc ?{<CR>jV/^\s*\}$<CR>k:sort<CR>:noh<CR>

" Reload the VIM RC
nmap <leader>sv :source ~/.vimrc<CR>

" Set colour scheme
colorscheme hybrid_reverse

" Mapping for dash
:nmap <silent> <leader>d <Plug>DashSearch

" General editor settings
nnoremap <leader>p  :CtrlPTag<cr>


" Cursor Config
highlight Cursor guifg=white guibg=#DC4941
highlight iCursor guifg=white guibg=steelblue

"" Highlight search
set hlsearch

"" Hide GUI toolbar
set guioptions-=T

" Set Control-P Plugin options
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['Gemfile', '.meteor', 'Rakefile']
let g:ctrlp_custom_ignore = '\.git$\|\vendor/*|\.sass-cache/*|\.meteor/*|output/*|build/*|node_modules/*|bower_components/*|tmp/*|public/uploads/*'

" Airline
" ************************************************
set laststatus=2 " always displayed

let g:airline#extensions#tabline#enabled = 1 " Enable Airline
let g:airline_powerline_fonts = 1 " Use Powerline Fonts for symbolse

" Colorscheme
let g:airline_theme = 'powerlineish'

" No top bar
"let g:airline#extensions#tabline#enabled = 0

" Airline Whitespace
let g:airline#extensions#branch#empty_message           = "No SCM"
let g:airline#extensions#whitespace#enabled             = 1
let g:airline#extensions#whitespace#symbol              = '!'
let g:airline#extensions#whitespace#checks              = [ 'indent','trailing' ]
let g:airline#extensions#whitespace#max_lines           = 20000
let g:airline#extensions#whitespace#show_message        = 1
let g:airline#extensions#whitespace#trailing_format     = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'

""Show nerdtree on start
autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <leader>ntt :NERDTreeToggle<CR>
nnoremap <leader>nt :NERDTree<CR>

" Find current file in NERDTree
nnoremap <leader>ntf :NERDTreeFind<CR>

" Position, size and config of NERDTree
let NERDTreeWinPos = 'left'
" let NERDTreeWinSize = '50'
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\.vim$', '\~$', '\.zeus\.sock', '.DS_Store']

"" Disable Numbers.vim plugin by default
"" autocmd vimenter * :NumbersToggle

""Remove whitespace on save
autocmd BufWritePre * if &ft != 'markdown' | :%s/\s\+$//e

"" Mappings for tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\z=<CR>
vmap <Leader>a: :Tabularize /:\z=<CR>

"" Mappings for Vim-RuboCop
let g:vimrubocop_keymap = 0
"nmap <Leader>c :RuboCop<CR>

" Mappings for rspec
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:RubyRunner_key = '<Leader>r'
let g:RubyRunner_keep_focus_key = '<Leader>R'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the previous buffer
nnoremap <leader>h :bprevious<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

let g:gitgutter_map_keys = 0

