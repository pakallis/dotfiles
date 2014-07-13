set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
"My Bundles
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-vividchalk'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
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
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-cucumber'
Bundle 'gregsexton/gitv'
Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-unimpaired'
Bundle 'skalnik/vim-vroom'
Bundle 'tpope/vim-bundler'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'szw/vim-tags'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'nielsmadan/harlequin'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'pgr0ss/vimux-ruby-test'
Bundle 'jgdavey/vim-turbux'
Bundle 'benmills/vimux'
Bundle 'jgdavey/tslime.vim'
Bundle 'mattn/emmet-vim'

" Enable only for html/css
let g:user_emmet_install_global = 0
" Remap default key
let g:user_emmet_leader_key='<C-p>'
autocmd FileType html,css EmmetInstall
Bundle 'kassio/vim-tmux-runner'
Bundle 'lucapette/vim-jquery-doc'
Bundle 'stephenmckinney/vim-dochub'
Bundle 'endel/vim-github-colorscheme'
Bundle 'othree/coffee-check.vim'
Bundle 'croaky/vim-colors-github'
" Bundle 'jaxbot/github-issues.vim'
" Bundle 'tpope/gem-ctags'
Bundle 'airblade/vim-gitgutter'
Bundle 'wellle/tmux-complete.vim'
Bundle 'henrik/vim-yaml-flattener'

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

"Mouse enabled
set mouse=a
"Magic!
nnoremap ; :

"Sudo edit
cmap w!! w !sudo tee % >/dev/null

"Ctags autogenerate
" let g:vim_tags_auto_generate=1
"tags and ctrp key binding
" nnoremap <leader>. :CtrlPTag<cr>

"Background stuff
syntax on
set background=dark
let g:solarized_termcolors=256
set t_Co=256
if has('gui_running')
  set background=light
else
  set background=dark
endif
let mapleader = ","
" Whitespace
set tabstop=2
set shiftwidth=2
set expandtab

"Bash-like tab
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
" set runtimepath^=~/.vim/bundle/ctrlp.vim


"NerdTree
map <C-n> :NERDTreeToggle<CR>

" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
" autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
"
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
set backspace=2

set background=dark
" set t_Co=256
" let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
colorscheme molokai
"fast search
nmap <leader>A <Esc>:Ack <c-r><c-w> app/<CR>
"rubytest parameters

" map <Leader>r <Plug>RubyTestRun     " change from <Leader>t to <Leader>r
" map <Leader>R <Plug>RubyFileRun     " change from <Leader>T to <Leader>R
" map <Leader>rl <Plug>RubyTestRunLast " change from <Leader>l to <Leader>rl

let g:rubytest_cmd_test = "ruby -ITest %p"
let g:rubytest_cmd_testcase = "ruby -ITest %p -n '/%c/'"
let g:rubytest_cmd_spec = "spec -f specdoc %p"
let g:rubytest_cmd_example = "spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "cucumber %p"
let g:rubytest_cmd_story = "cucumber %p -n '%c'"
"Test results in quickfix
" let g:rubytest_in_quickfix = 1

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

"Scroll 3 lines per C-e or C-y
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"No annoying message Press ENTER or type command to continue
" set shortmess=atI

"Buffer command-t bindings
"Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=list:longest
map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b

" Fugitive shortcuts
noremap ;gs :Gstatus<cr>
noremap ;gc :Gcommit<cr>
noremap ;gl :Glog<cr>
noremap ;gd :Gdiff<cr>
noremap ;gb :Gbrowse<cr>

"" Show the buffer number in the status line.
" set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

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

let g:dochub_mapping='<Leader>-h'

" Ignore some folders and files for faster indexing in CtrlP
" let g:ctrlp_custom_ignore = '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$|\.so$|\.dat$|\.DS_Store\|\.swp'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*tags*
" let g:ctrlp_working_path_mode = 0
"
"ctrlp stuff
let g:ctrlp_use_caching=1
" let g:ctrlp_clear_cache_on_exit=0
"send command to tmux
"Ack vim close quickfix window with ctrl + c
" nnoremap <silent> <buffer><c-c> :ccl<CR>
let g:github_upstream_issues=1
let g:vimux_ruby_cmd_unit_test = "bundle exec ruby -Itest"
let g:VimuxOrientation = "h"
let g:coffeeCheckHighlightErrorLine = 1
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile *.ejs set ft=html

" let g:vim_tags_auto_generate = 1
" let g:vim_tags_project_tags_command = "ctags -R ./"
