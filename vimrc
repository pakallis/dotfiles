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
" Bundle 'reinh/vim-makegreen'

"Settings
"Binding for greek characters
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
set encoding=utf-8
set showcmd
syntax on
let mapleader = ","
" Whitespace
set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent
" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
filetype plugin indent on

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
" let g:solarized_termcolors=256
colorscheme vividchalk
" fast search
nmap <leader>a <Esc>:Ack! 

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


