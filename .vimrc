

set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
"set showmatch " Show matching brackets when text indicator is over them


set tags=/home/telco/daniel/svn/tags


" enable ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ctrlp settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_cmd='CtrlP ~/svn'


" ignore compiled files when using ctrlp
set wildignore+=*.o,*.swp,*.a

" 
let c_no_curly_error=1

" define comma as leader
let mapleader=","

" enable syntax highlight
syntax on

" colorscrheme configuration
colorscheme desert
set background=dark

" show line numbers
set number

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" visual autocomplete for command menu
set wildmenu            

" always show tabs line
set showtabline=2

" keep indentation when creating new line
set autoindent


" set autocommands
augroup hooks " {

	" Limpa todos os comandos do grupo
	autocmd!

	" Executa comando para compilar arquivo e enviar binário para a máquina de testes
	autocmd BufWritePost $MYVIMRC source $MYVIMRC

	" Auto source vimrc on save
	autocmd BufWritePost * !/home/telco/daniel/copy.sh <afile>:p

augroup END " }


