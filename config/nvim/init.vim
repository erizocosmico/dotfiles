if has('vim_starting')
" Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'erizocosmico/vim-color-golang'
NeoBundle 'fatih/vim-go'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}
NeoBundle 'carlitux/deoplete-ternjs', { 'build': { 'mac': 'npm install -g tern', 'unix': 'npm install -g tern' }}
NeoBundle 'majutsushi/tagbar'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'luochen1990/rainbow'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'othree/html5.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'chrisbra/NrrwRgn'
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'dodie/vim-disapprove-deep-indentation'
NeoBundle 'joukevandermaas/vim-ember-hbs'
NeoBundle 'dracula/vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'sbdchd/neoformat'

" Required:
call neobundle#end()

NeoBundleCheck

colorscheme dracula
set guifont=Hack:12
set gfn=Hack\ 20
set guioptions-=L
set guioptions-=r
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
filetype off
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set ttyfast
" Auto saving
au FocusLost * :wa " Save after losing focus
set autowrite " write when switching files
set autoread  " read automagically from disk
set autoindent
set backspace=indent,eol,start
set incsearch
set hlsearch
set noerrorbells
set splitright
set splitbelow
set noshowmode
set number
set nobackup
set nowritebackup
set noswapfile
set history=100
set ruler
set completeopt-=preview
set lazyredraw
set clipboard+=unnamedplus
set gdefault
set relativenumber
set nocursorline
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/bower_components/*,*/dist/*,*/cordova/*,*/public/spree/*

let g:LookOfDisapprovalTabTreshold=6
let g:LookOfDisapprovalSpaceTreshold=(&tabstop*6)

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif

let mapleader = ","
nmap <space> :

" Use tab instead of % to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

let g:syntastic_disabled_filetypes=['html', 'sass', 'markdown']
let g:polyglot_disabled = ['elm', 'go', 'sass', 'scss', 'html', 'hbs', 'markdown']
let g:go_disable_autoinstall = 0
let g:elm_format_autosave = 1

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Run deoplete.nvim automatically
call deoplete#enable()
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1

" Custom shortcuts
nmap <C-right> <C-w>l
nmap <C-up> <C-w>k
nmap <C-left> <C-w>h
nmap <C-down> <C-w>j
imap <C-right> <esc><C-w>l
imap <C-up> <esc><C-w>k
imap <C-left> <esc><C-w>h
imap <C-down> <esc><C-w>j
nmap <leader>n :tabn<cr>
nmap <leader>m :tabp<cr>
nmap <leader>b :tabfirst<cr>
nmap <leader>y +y
imap <C-s> <esc>:w<cr>
nmap <C-s> :w<cr>
nmap <C-q> :q!<cr>
imap <C-q> <esc>:q!<cr>
nmap <C-n> :cnext<cr>
" Delete block under cursor and start writing
nmap <leader>db ViBd<esc><up>o
" Delete inside parens bock and start writing
nmap <leader>da Vibd<esc>i
" Indent block under cursor
nmap <leader>ib ViB><esc>
" Unindent block under cursor
nmap <leader>ub ViB<<esc>
" Join next line erasing first space (it goes to end of current line)
nmap <leader>j $J<del>
nmap <leader>s :split<cr>
nmap <leader>v :vsplit<cr>

" Airline show always
set laststatus=2

" Custom ignored paths for ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'Indent
filetype plugin indent on
set expandtab

" Custom indentations per file
autocmd FileType html,elm setlocal shiftwidth=4 tabstop=4 backspace=2
autocmd FileType ocaml,css,less,scss,sass,python,ruby,js,jsx,javascript,dart,typescript setlocal shiftwidth=2 tabstop=2 backspace=2
autocmd FileType make setlocal noexpandtab

" Automatically run CSSComb on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

" Rainbow parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
    \   'guifgs': ['darkcyan', 'magenta', 'darkyellow', 'red', 'grey', 'darkmagenta', 'darkyellow'],
    \   'ctermfgs': ['darkcyan', 'magenta', 'darkyellow', 'red', 'grey', 'darkmagenta', 'darkyellow'],
    \   'separately': {
    \       '*': {},
    \       'html': 0,
    \       'go': 0,
    \   }
    \}

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

" Go syntax highlighting
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1

augroup go
  autocmd!

  " Show by default 4 spaces for a tab
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

  " :GoTest
  autocmd FileType go nmap <leader>t  <Plug>(go-test)

  " :GoRun
  autocmd FileType go nmap <leader>r  <Plug>(go-run)

  " :GoDoc
  autocmd FileType go nmap <Leader>d <Plug>(go-doc)

  " :GoCoverageToggle
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

  " :GoInfo
  autocmd FileType go nmap <Leader>i <Plug>(go-info)

  " :GoMetaLinter
  autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

  " :GoTestFunc
  autocmd FileType go nmap <Leader>f <Plug>(go-test-func)

  " :GoDef but opens in a vertical split
  autocmd FileType go nmap <Leader>dv <Plug>(go-def-vertical)

  " :GoDef but opens in a horizontal split
  autocmd FileType go nmap <Leader>ds <Plug>(go-def-split)

  autocmd FileType go nmap <Leader>e <Plug>(go-rename)

  " :GoAlternate  commands :A, :AV, :AS and :AT
  autocmd FileType go nmap <leader>a :call go#alternate#Switch(0, 'edit')<cr>
  autocmd Filetype go nmap <leader>av :call go#alternate#Switch(0, 'vsplit')<cr>
  autocmd Filetype go nmap <leader>as :call go#alternate#Switch(0, 'split')<cr>
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END

" Enable goimports instead of go fmt
let g:go_fmt_command = "goimports"

let g:neoformat_enabled_css = ['csscomb']
let g:neoformat_enabled_scss = ['csscomb']
let g:neoformat_enabled_less = ['csscomb']
let g:neoformat_enabled_javascript = ['prettiereslint']
let g:neoformat_enabled_typescript = ['prettier']

autocmd BufWritePre *.css Neoformat
autocmd BufWritePre *.scss Neoformat
autocmd BufWritePre *.less Neoformat
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.ml Neoformat
autocmd BufWritePre *.mli Neoformat

" TagBar
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Add command to toggle tagbar
nmap <C-x> :TagbarToggle<CR>

" Change of buffers
nmap <C-c> :bp<CR>
nmap <C-v> :bn<CR>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0

" Elm
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" Airline
let g:airline_symbols = {}
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['branch', 'tabline']
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '·'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_inactive_collapse=1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline_theme='oceanicnext'
let g:airline_section_y = ''
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

" NerdTree
map <C-z> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
autocmd VimEnter * if (0 == argc()) | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
