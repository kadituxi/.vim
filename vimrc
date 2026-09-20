set number
set relativenumber

filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent

set title
set mouse=a
set autoread
set clipboard=unnamedplus
set encoding=UTF-8
set noswapfile
set cursorline

syntax on

nnoremap <C-s> :w<cr>
noremap <C-q> :q<cr>
nnoremap <C-b> :Exp<cr>
nnoremap <C-y> :%y+<cr>
nnoremap <C-i> :LspDefinition<cr>
nnoremap <C-i> :bn<cr> " Mapeia C-Tab para mudar de buffer
nnoremap <C-@> :LspHover<cr> " Mapeia C-Space para ter acesso a documentação de um método ou função 

set termguicolors
colorscheme habamax

call plug#begin()

Plug 'jiangmiao/auto-pairs',
Plug 'prabirshrestha/vim-lsp',
Plug 'mattn/vim-lsp-settings',
Plug 'prabirshrestha/asyncomplete.vim',
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

" let g:lsp_diagnostics_enabled = 0 " Desabilitar mensagens de erro
