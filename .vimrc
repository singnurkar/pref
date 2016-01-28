set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'ajh17/Spacegray.vim'          " theme
Plugin 'airblade/vim-gitgutter'       " git-gutter
Plugin 'scrooloose/nerdtree'
Plugin 'nsf/gocode', {'rtp': 'vim/'}  " gocode
Plugin 'vim-scripts/camelcasemotion'  " navigate camelcase
Plugin 'Townk/vim-autoclose'          " insert closing brackets
Plugin 'godlygeek/tabular'            " align by character
Plugin 'ctrlpvim/ctrlp.vim'           " file browser
Plugin 'terryma/vim-multiple-cursors' " multiple cursors
Plugin 'fatih/vim-go'                 " golang
Plugin 'pangloss/vim-javascript'      " javascript
Plugin 'darthmall/vim-vue'            " vuejs
Plugin 'Valloric/YouCompleteMe'       " autocomplete
call vundle#end()
filetype plugin indent on
" End Vundle

set clipboard=unnamed
set t_Co=256
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set encoding=utf-8
set hlsearch
set ignorecase
set nowrap
set modifiable
set background=dark
set hidden
set showcmd
set cursorline
"set wildmenu
"set showmatch
"set incsearch
"set undofile
"set laststatus=2

" show filename
set modeline
set ls=2

"  move into blank space in visual block mode
set virtualedit=block

" shell style autocomplete
"set wildmode=longest,list

syntax on
colorscheme spacegray

" make git gutter same colour as the line number column
highlight clear SignColumn
"highlight Normal ctermbg=black

" Convert tabs to spaces on file read
retab

" auto update go imports
" https://github.com/bradfitz/goimports
let g:go_fmt_command = "goimports"

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" show full path
set statusline+=%F

" strip whitespace on save
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e
set linebreak


" Force hjkl usage
nnoremap <up>       <nop>
nnoremap <down>     <nop>
nnoremap <left>     <nop>
nnoremap <right>    <nop>
inoremap <up>       <nop>
inoremap <down>     <nop>
inoremap <left>     <nop>
inoremap <right>    <nop>

" Switch modes easily

nnoremap <Tab>      i<Tab>
vnoremap <Tab>      i<Tab>
nnoremap <Space>    i<Space>
vnoremap <Space>    i<Space>
nnoremap <Enter>    i<Enter>
nnoremap <BS>       i<BS>
inoremap jk         <Esc>
inoremap JK         <Esc>
nnoremap JK         <Esc>
nnoremap wq         :wq<Enter>
nnoremap WQ         :wq<Enter>
inoremap wq         :wq<Enter>
inoremap WQ         :wq<Enter>
nnoremap qq         :q!<Enter>
nnoremap QQ         :q!<Enter>
inoremap <C-k>      <up>
" cycle through buffers

nnoremap   <C-a>          :bp<Enter>
nnoremap   <C-f>          :bn<Enter>
inoremap   <C-a>          <Esc>:bp<Enter>
inoremap   <C-f>          <Esc>:bn<Enter>
nnoremap   zz             :w<Enter>
nnoremap   <leader>q      :bd<Enter>
nnoremap    ;               :
nnoremap <leader>l  :Tab /
inoremap <leader>l  :Tab /

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
" Stop that stupid window from popping up
map      q:         :q

nnoremap <F1>       <nop>
nnoremap q          <nop>
nnoremap Q          <nop>
"nnoremap K          <nop>

" Toggle TabBar
inoremap \] <Esc>:TagbarToggle<CR>
nnoremap \] :TagbarToggle<CR>
inoremap \[ <Esc>:NERDTreeToggle<CR>
nnoremap \[ :NERDTreeToggle<CR>

" http://tilvim.com/2013/12/20/camelcase.html
" Mappings for camelcasemotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

:command -nargs=1 -complete=file TT :tabe **/args
