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
" set cursorline
set termguicolors
set background=dark
set confirm

syntax on

nnoremap <C-s> :w<cr>
noremap <C-q> :q<cr>
nnoremap <C-b> :Exp<cr>
nnoremap <C-y> :%y+<cr>
nnoremap <S-i> :LspDefinition<cr> " Shift-i para ir para a implentação
nnoremap <Tab> :bn<cr> " Mapeia Tab para mudar de buffer
nnoremap <C-@> :LspHover<cr> " Mapeia C-Space para ter acesso a documentação de um método ou função 
nnoremap <C-p> :MarkdownPreview<cr>

call plug#begin()

Plug 'jiangmiao/auto-pairs',
Plug 'prabirshrestha/vim-lsp',
Plug 'mattn/vim-lsp-settings',
Plug 'prabirshrestha/asyncomplete.vim',
Plug 'prabirshrestha/asyncomplete-lsp.vim',
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'ryanoasis/vim-devicons',
Plug 'sainnhe/sonokai',
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

call plug#end()

let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai

" let g:lsp_diagnostics_enabled = 0 " Desabilitar mensagens de erro

let g:airline_theme='tomorrow'

let g:airline_section_b = '%f'
let g:airline_section_c = ''
let g:airline_section_x = '%{&filetype}'
let g:airline_section_y = '%l:%c'
let g:airline_section_z = '%p%%'
let g:airline#extensions#whitespace#enabled = 0

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''

let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
