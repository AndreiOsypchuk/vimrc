call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'https://github.com/pineapplegiant/spaceduck'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'kien/ctrlp.vim'
Plug 'sainnhe/everforest'

call plug#end()
filetype plugin on
filetype indent on

set background=dark
"set mouse=a
set so=7
set ignorecase
set smartcase
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set lazyredraw
set showmatch
set noerrorbells
set novisualbell
syntax enable
set encoding=utf8
set expandtab
set smarttab
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set tabstop=2
set shiftwidth=2
set expandtab
set splitright
set mat=1
set ttyfast


autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-m> :NERDTreeFocus<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

set t_md=
"color codedark
