set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "Required for vundle. Do not remove
  Plugin 'VundleVim/Vundle.vim'

  "Colorschemes
  Plugin 'tomasr/molokai'
  Plugin 'tpope/vim-vividchalk'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'croaky/vim-colors-github'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'rking/ag.vim'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tomtom/tcomment_vim'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'pakallis/vim-turbux'
  Plugin 'benmills/vimux'
  "Navigate between html tags with %
  Plugin 'tmhedberg/matchit'
  " ----------- fzf plugin and dependencies --------
  "
  Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plugin 'junegunn/fzf.vim'

  " ----------- PHP specifics -----------
  "
  "Plugin 'vim-scripts/PIV'
  "Plugin 'StanAngeloff/php.vim'
  Plugin 'shawncplus/phpcomplete.vim'

  " ----------- Coffeescript specifics -----
  "
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'mustache/vim-mustache-handlebars'

  "Match HTML tags
  Plugin 'Valloric/MatchTagAlways'
  Plugin 'mattn/emmet-vim'

  " Disabled for performance reasons
  " TODO: Evaluate if the benefits using
  " it outeighs the performance degradation
  " Plugin 'szw/vim-tags'
  
  " ----------- Check for syntax errors -------
  Plugin 'scrooloose/syntastic'

  "----------- Vim status bar --------
  "
  Plugin 'Lokaltog/powerline'
  Plugin 'bling/vim-airline'

  "Syntax checking, indentation for multiple languages
  Plugin 'sheerun/vim-polyglot'

  " ----------- Snipmate and dependencies -----------
  "
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'

  " ------------ Optional Snippets for snipmate ---------
  " Track the engine.
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'hlissner/vim-ultisnips-snippets'

  " ---------- Convert js to coffee ------------------
  Plugin 'JarrodCTaylor/vim-js2coffee'

  " TODO: evaluate its usability
  Plugin 'AndrewRadev/splitjoin.vim'

  " Post gist directly to vim
  Plugin 'mattn/gist-vim'

  " TODO: evaluate its usability
  " Plugin 'tpope/vim-bundler'
  " TODO: evaluate its usability
  " Plugin 'christoomey/vim-tmux-navigator'
  " ---------------- Ruby specific -------------------
  "
  Plugin 'tpope/vim-rails'
  " TODO: evaluate its usability
  Plugin 'rorymckinley/vim-rubyhash'
  " TODO: evaluate its usability
  " Plugin 'ecomba/vim-ruby-refactoring'

call vundle#end()

set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
set encoding=utf-8
set showcmd

"Mouse enabled
set mouse=a

"Remap ; to : to save an extra keystroke when saving
nnoremap ; :

"Sudo edit
cmap w!! w !sudo tee % >/dev/null

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

" -------- Whitespaces --------
"
set tabstop=2
set shiftwidth=2
set expandtab

"Bash-like tab
set wildmenu

"Indenting
set autoindent
set smartindent

" ---------- Search ------------
"
set hlsearch
set incsearch
set ignorecase
set smartcase
filetype plugin indent on

"

"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
"autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
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

"Copy/paste from/to clipboard
"TODO : Set this to unnames on Mac
set clipboard=unnamedplus

" |-------------------------------------------|
" |-------------- Custom mappingss -----------|
" |-------------------------------------------|
"
"Remap : to ; to save key strokes
nnoremap ; :
"Fast escape
imap ;; <Esc>

"Use Q for formatting the current paragraph
vmap Q gq
nmap Q gqap

"vimrc stuff
nmap <Leader>s :source $MYVIMRC
nmap <Leader>v :e $MYVIMRC
nmap <Leader>p :. !pbpaste<CR>

"Clear search history when you press <Leader>/
nmap <silent> ,/ :nohlsearch<CR>

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

"Fugitive shortcuts
noremap ;gs :Gstatus<cr>
noremap ;gc :Gcommit<cr>
noremap ;gl :Glog<cr>
noremap ;gd :Gdiff<cr>
noremap ;gb :Gbrowse<cr>

"" Show the buffer number in the status line.
"set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"Show whitespace chars
set list

" Show line numbers
set number

set shell=/bin/sh
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile *.ejs set ft=html

" |----------------------------------------------------|
" |------------- Plugin settings ----------------------|
" |----------------------------------------------------|


" --------------- Ag settings ----------------
" 
nnoremap \ :Ag<SPACE>

" -------------- Easymotion settings ---------
"
"Remove this line to do everything with <leader><leader> in easymotion
"
let g:EasyMotion_leader_key = '<Leader>'


" -------------- Vimux settings ----------------
"
"let g:vimux_ruby_cmd_unit_test = "bundle exec m"
"let g:VimuxOrientation = "h"
"
" -------------- Coffeescript settings ---------
"
"let g:coffeeCheckHighlightErrorLine = 1

" ------------ Turbux settings ---------------
"
let g:turbux_test_type = 'minitest'
let g:turbux_command_test_unit = 'ruby -ITest'

" ----------- CTRL-P settings ----------------
"
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor|public'
let g:ctrlp_use_caching=1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" ----------- Ultisnips settings -------------
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
  
" ----------- Other settings -----------------
"Ignore specific folders and files for faster indexing in CtrlP
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*.so,*.swp,*tags*,*/public/*


" --------------- Emmet settings --------
"
let g:user_emmet_leader_key='<C-m>'

" -------------- MatchTagAlways settings ------
"
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'php' : 1,
    \ 'blade' : 1,
    \}

" |----------------------------------------------------|
" |------------- Custom macros/aliases/functions ------|
" |----------------------------------------------------|


" --------------- TODOlist -----------
"
function! TodoListMode()
   e ~/.todo.otl
   set foldlevel=1
   tabnew ~/.notes.txt
   tabfirst
   " or 'norm! zMzr'
endfunction
nnoremap <silent> <Leader>todo :execute TodoListMode()<CR>

" ------------- Strip trailing whitespaces --------------
"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"Strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" ------------ Coffeescript/Javascript ----------------
"
function! PasteAsCoffee()
  :read !pbpaste | js2coffee
endfunction

:command! PasteAsCoffee :call PasteAsCoffee()
:map <leader>pc :PasteAsCoffee<CR>

" ------------- Custom macros -------------
"
let @d='odebugger'
let @s='obinding.pry'
let @r="opage.save_screenshot '1.png'"
let @h="wi_html"
let @t='Otime=(new Date()).getTime()<Esc>joconsole.log((new Date()).getTime() - time)'
let @c='oconsole.log("hello")'
