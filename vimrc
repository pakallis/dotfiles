set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
"My Bundles
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
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

"Whitespace
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
