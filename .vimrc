"pathogen
"tagbar
"vim-colors-solarized
"vim-fugitive
"vim-sensible
"vim-airline
"nerdtree
"ctrl+p
"plugin/minibufexpl.vim
"GO: vim-go, YouCompleteMe
"javascript: vim-javascript, vim-jsx, tern.js, jsctags, ctags
"other: ctags


set hidden
set nocompatible
set runtimepath^=~/.vim/bundle/ctrlp.vim
set number
set t_Co=16
set backspace=2

set title

set nobackup
set noswapfile "" http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite


"show whitespace
"set list listchars=tab:»·,trail:·,nbsp:·

set colorcolumn=90

execute pathogen#infect()
syntax on

set background=light
let g:solarized_termcolors=256
colorscheme solarized
filetype plugin on
filetype indent on

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set shiftwidth=2
set tabstop=2
set expandtab
set smarttab autoindent


set mouse=a

autocmd QuickFixCmdPost *grep* cwindow

nnoremap <leader>ff :%!js-beautify -t -j -q -B -f -<CR>

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1


nmap <F8> :TagbarToggle<CR>


au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let g:go_fmt_command = "goimports"


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


:filetype indent on
:set filetype=html   
:set smartindent          




execute pathogen#infect()
syntax on
filetype plugin indent on
