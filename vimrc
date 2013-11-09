set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
"My Bundles
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-vividchalk'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tomasr/molokai'

"Snipmate dependencies
Bundle 'vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-surround'
Bundle 'tmhedberg/matchit'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-cucumber'
Bundle 'gregsexton/gitv'
Bundle 'Lokaltog/powerline'
Bundle 'janx/vim-rubytest'
Bundle 'tpope/vim-unimpaired'
Bundle 'skalnik/vim-vroom'
Bundle 'tpope/vim-bundler'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'bling/vim-airline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'mileszs/ack.vim'
Bundle 'szw/vim-tags'
Bundle 'majutsushi/tagbar'
Bundle 'wincent/Command-T'
Bundle 'Valloric/YouCompleteMe'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tpope/vim-vividchalk'
Bundle 'nielsmadan/harlequin'
Bundle 'thoughtbot/vim-rspec'

"Settings
"Binding for greek characters
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
set encoding=utf-8
set showcmd

"Relative numbers
set number
au FocusLost * set number
au FocusGained * set relativenumber
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber

"Tagbar toggle
nmap <F8> :TagbarToggle<CR>

"Mouse enabled
set mouse=a
"Magic!
nnoremap ; :

"Sudo edit
cmap w!! w !sudo tee % >/dev/null

"Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

"Ctags autogenerate
let g:vim_tags_auto_generate=1
"tags and ctrp key binding
nnoremap <leader>. :CtrlPTag<cr>

"Background stuff
syntax on
set background=dark
let g:solarized_termcolors=256
" set t_Co=256
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
let mapleader = ","
" Whitespace
set tabstop=2
set shiftwidth=2
set expandtab

"Bash-like tab
set wildmode=longest,list,full
set wildmenu

"indenting
set autoindent
set smartindent

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
filetype plugin indent on

" Greek keyboard layout support change with ctrl + ^
" set keymap=greek_utf-8
" set iminsert=0
" set imsearch=-1

filetype plugin indent on
"
"Easymotion

"Remove this line to do everything with <leader><leader> in easymotion
let g:EasyMotion_leader_key = '<Leader>'

"CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim


"NerdTree
map <C-n> :NERDTreeToggle<CR>

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1

nmap <F8> :TagbarToggle<CR>
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
set backspace=2

set background=dark
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
" fast search
nmap <leader>A <Esc>:Ack <c-r><c-w><CR>
""rubytest parameters

map <Leader>\ <Plug>RubyTestRun     " change from <Leader>t to <Leader>\
map <Leader>] <Plug>RubyFileRun     " change from <Leader>T to <Leader>]
map <Leader>/ <Plug>RubyTestRunLast " change from <Leader>l to <Leader>/

let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "spec -f specdoc %p"
let g:rubytest_cmd_example = "spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "cucumber %p"
let g:rubytest_cmd_story = "cucumber %p -n '%c'"
"Test results in quickfix
let g:rubytest_in_quickfix = 1

"Fast escape
imap ;; <Esc>

"Replace : with ; to save key strokes
nnoremap ; :

"Use Q for formatting the current paragraph
vmap Q gq
nmap Q gqap

"vimrc stuff
nmap <Leader>s :source $MYVIMRC
nmap <Leader>v :e $MYVIMRC

"Clear search history when you press <Leader>/
nmap <silent> ,/ :nohlsearch<CR>

"Copy/paste from/to clipboard
set clipboard=unnamedplus

"Fast save
nmap ;w :w!<cr>
nmap ;q :q!<cr>

"More history
set history=1000

"bash-like tab autocompletion
set wildmode=list:longest

"Scroll 3 lines per C-e or C-y
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"No annoying message Press ENTER or type command to continue
set shortmess=atI

"Buffer command-t bindings
"Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=full
map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b
"" Show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Show whitespace chars
set list

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
