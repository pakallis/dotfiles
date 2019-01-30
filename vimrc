set nocompatible
filetype off
call plug#begin()

  "Colorschemes
  Plug 'croaky/vim-colors-github'
  "Utilities
  Plug 'Lokaltog/vim-easymotion'
  Plug 'kien/ctrlp.vim'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  "Navigate between html tags with %
  Plug 'tmhedberg/matchit'
  " ----------- fzf plugin and dependencies --------
  "
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  "Match HTML tags
  Plug 'Valloric/MatchTagAlways'
  Plug 'mattn/emmet-vim'

  
  "----------- Vim status bar --------
  "
  Plug 'Lokaltog/powerline'
  Plug 'bling/vim-airline'

  "Syntax checking, indentation for multiple languages
  "Plug 'sheerun/vim-polyglot'
  "Plug 'w0rp/ale'

  " ----------- Snipmate and dependencies -----------
  "
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  "Plug 'garbas/vim-snipmate'

  " ------------ Optional Snippets for snipmate ---------
  " Track the engine.
  "Plug 'SirVer/ultisnips'
  "Plug 'honza/vim-snippets'
  "Plug 'hlissner/vim-ultisnips-snippets'
call plug#end()

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
"
" Set tabs for GO instead of spaces
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

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
colorscheme github

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
au BufRead,BufNewFile *.js6 set ft=javascript

" |----------------------------------------------------|
" |------------- Plug settings ----------------------|
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
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
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
"Map last command to ctrl+l
:noremap <C-m> @:

"Enable haml linter
let g:syntastic_haml_checkers = ['haml_lint', 'scss_lint', 'coffeelint']
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '~/software_projects/centaurtek/centaur-tech-fog-agent/node_modules/eslint/bin/eslint.js'
let g:syntastic_enable_r_lintr_checker = 1
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:pymode_python = 'python3'
