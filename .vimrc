set nocompatible                                                                                                                                             
filetype off
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'Lokaltog/vim-powerline'
Plugin 'dense-analysis/ale'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<C-t>'
let g:ctrlp_working_path_mode = 0 " don’t manage working directory.
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v\c\.(git|svn)$|cgi/t/sandbox|cover_db',
\ 'file': '\v\c\.(swf|bak|png|gif|js|mov|ico|jpg|pdf|jrxml)$',
\ }
Plugin 'Lokaltog/vim-easymotion'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Shougo/neocomplete.vim' 
let g:Powerline_symbols = 'fancy'
nmap <C-n> :NERDTreeToggle<CR>
 
call vundle#end()
filetype plugin indent on
 
""color setting
set background=dark
colorscheme space-vim-dark
syntax on
set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"
hi Comment cterm=italic
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
 
""autocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#auto_complete_delay = 0
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
    

""custom setting
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set term=xterm-256color
set splitbelow  
set autoindent  
set backspace=indent,eol,start
set cindent " set smartindent
set cmdheight=2 
set cursorcolumn
set number                                                                                                                                                            
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch   
set laststatus=2
set list  
set listchars=tab:>-,trail:-
set nowrap
set ruler 
set scrolloff=5 
set shiftwidth=4
set showcmd     
set showmatch   
set smarttab    
set tags=tags;/ 
set virtualedit=block
set wrap  
set path=.,/usr/include,,**
set noswapfile  
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j


""ale setting   
let g:ale_perl_perlcritic_profile = "/home/git/regentmarkets/cpan/rc/.perlcriticrc"
let g:ale_perl_perltidy_profile = "/home/git/regentmarkets/cpan/rc/.perltidyrc"
let g:ale_linters = { 'perl': ['perl','perlcritic','perltidy'] }
let g:ale_fixers = { 'perl':['perltidy'] }
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file

