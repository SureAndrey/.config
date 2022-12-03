" Plugins <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 


" plugins 
call plug#begin()
  Plug 'preservim/nerdcommenter' " plugin para ajudar a comentar / descomentar 
	Plug 'scrooloose/nerdtree'    " Gerenciador de arquivos
	Plug 'sheerun/vim-polyglot'   " Realce de sintaxe
	Plug 'jiangmiao/auto-pairs'   " Fecha automaticamente parênteses, colchetes e chaves
	Plug 'ap/vim-css-color'       " Mostra as cores
	Plug 'airblade/vim-gitgutter' " Mostra as alterações do Git em arquivos abertos
	Plug 'dense-analysis/ale'     " Ver erros no codigo
	Plug 'ervandew/supertab'      " Habilita o tab
	Plug 'kyoz/purify', { 'rtp': 'vim' } " Tema purify
call plug#end()


" Config <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 


" theme
colorscheme purify

set ai               " habilita auto identação
set title            " mostrar titulo do arquivo
set ruler            " mostrar a posição do cursor 
set number           " contador de linhas
set mouse=a          " ativar mouse
set showcmd          " exibe comando sendo executado
set showmode         " mostrar o modo do editor
set wildmenu         " mostra um menu mais avançado para sugestões de auto-completar.
set autowrite        " autosave v1
set cursorline       " destaca linha atual
set autowriteall     " autosave v2
set termguicolors    " habilita melhor compatibilidade com temaselho
set relativenumber   " distancia das linhas onde o cursor esta
set clipboard+=unnamedplus,unnamed " Usa clipboard do sistema
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab " tabs
set showtabline=2

" syntax
filetype plugin indent on
syntax enable


" Nerdtree <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 


" NERDTree
let NERDTreeShowHidden=1 " mostrar arquivos ocultos
let g:NERDTreeIndicatorMapCustom = {                                                                                                    
	\ "Modified"  : "✹",                                                                                            
	\ "Staged"    : "✚",                                                                                            
	\ "Untracked" : "✭",                                                                                            
	\ "Renamed"   : "➜",                                                                                            
	\ "Unmerged"  : "═",                                                                                            
	\ "Deleted"   : "✖",                                                                                            
	\ "Dirty"     : "✗",                                                                                            
	\ "Clean"     : "✔",                                                                                            
	\ 'Ignored'   : '☒',                                                                                            
	\ "Unknown"   : "?",}

" Fechar o NERDtree apos abrir um arquivo
let NERDTreeQuitOnOpen = 1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" ATALHOS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 


" abrir gerenciador de arquivos 
map <F2> :NERDTreeFind "%" <CR>

" salvar
nnoremap <C-s> :w! <CR>

" fecha
nnoremap <C-p> :q <CR>

" install plugins
map <F12> :PlugInstall <CR>

" Copiar um texto e enviar esse texto para a área de transferência
nnoremap <C-c> :y <CR>

" executar
nnoremap <F3> :! node "%" <CR>
nnoremap <F4> :! lua "%" <CR>
nnoremap <F5> :! python "%" <CR>

" mover linhas
nnoremap <C-j> :m .+1 <CR>
nnoremap <C-k> :m .-2 <CR>
inoremap <C-j> <Esc> :m .+1 <CR>
inoremap <C-k> <Esc> :m .-2 <CR>
vnoremap <C-j> :m '>+1 <CR>
vnoremap <C-k> :m '<-2 <CR>
