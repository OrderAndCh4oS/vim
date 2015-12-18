execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable

colorscheme molokai

set number
set ruler
set textwidth=79
set shiftround
set ts=4
set autoindent
set expandtab
set smarttab
set encoding=utf8
set shiftwidth=4
set history=500
set autoread
set listchars=space:.
set list

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set completeopt-=preview

let loaded_matchparen = 1

let g:airline#extensions#tabline#enabled = 1

let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']

let g:ycm_add_preview_to_completeopt=0

let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:php_cs_fixer_level = "psr2"
let g:php_cs_fixer_config = "default"
let g:php_cs_fixer_php_path = "php"
let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1
let g:php_cs_fixer_dry_run = 0
let g:php_cs_fixer_verbose = 0

let g:molokai_original = 1
let python_highlight_all = 1

autocmd BufWritePre * StripWhitespace
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType python setlocal completeopt-=preview

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <C-l> :call PhpCsFixerFixFile()<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>
noremap <F3> :Autoformat<CR>

