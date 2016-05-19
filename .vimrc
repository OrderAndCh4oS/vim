execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable

colorscheme molokai

scriptencoding utf-8
set encoding=utf-8
set fenc=utf-8
set termencoding=utf-8

set number
set ruler
set shiftround
set ts=4
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=4
set history=500
set autoread
set list
set listchars=tab:\ \ ,trail:.
set colorcolumn=80
set backspace=2 " backspace delete over EOL

highlight ColorColumn ctermbg=236

set completeopt-=preview

let g:ctrlp_show_hidden = 1

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let loaded_matchparen = 1

let g:airline#extensions#tabline#enabled = 1

let g:syntastic_loc_list_height=5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_confirm_extra_conf = 0

let g:molokai_original = 1

set clipboard=unnamed
set clipboard=unnamedplus

autocmd FileType make setlocal noexpandtab
autocmd BufWritePre * StripWhitespace
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType python setlocal completeopt-=preview

set laststatus=2
set statusline=%t
set statusline+=[%{strlen(&fenc)?&fenc:'none'}]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

au BufRead,BufNewFile *.twig set syntax=htmljinja

hi CursorLine cterm=NONE ctermbg=236

map <C-p> :paste<CR>
map <C-P> :nopaste<CR>
map <C-Y> :YcmGenerateConfig<CR>
map <C-;> :YcmCompleter FixIt<CR>
map <C-l> :call PhpCsFixerFixFile()<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <C-Right> :bnext<CR>
nmap <C-Left> :bprev<CR>
nmap <C-t> :TagbarToggle<CR>
noremap <F3> :Autoformat<CR>
map <F9> :YcmCompleter FixIt<CR>
