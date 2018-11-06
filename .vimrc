set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf'          
Plugin 'valloric/youcompleteme'
Plugin 'kien/ctrlp.vim'        
Plugin 'shawncplus/phpcomplete.vim'    
Plugin 'itchyny/lightline.vim' 
Plugin 'terryma/vim-multiple-cursors'  
Plugin 'posva/vim-vue'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'janko-m/vim-test'
Plugin 'vim-vdebug/vdebug'

" All of your Plugins must be added before the following line    
call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme
" =====================================
" let g:gruvbox_italic=1       
colorscheme gruvbox            
let g:gruvbox_contrast_dark = 'hard'   
set background=dark            
set t_Co=256 
"let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et               
"let g:indent_guides_start_lavel=1      
"let g:indent_guides_guide_size=1
set guicursor=i:ver25-iCursor  
"let g:gitgutter_terminal_reports_focus = 0

"=============TAB
let g:indentLine_char = '┆'


"==========JS============
"let g:used_javascript_libs = 'vue,jquery,react,ramda'
let g:vue_disable_pre_processors=1

" tmux setting                 
set term=screen-256color

" highlish search              
set hlsearch 
set nu     
set tags=tags

"=============TAB SETTING================
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4

nnoremap <Up> :echomsg "use k"<cr>     
nnoremap <Down> :echomsg "use j"<cr>   
nnoremap <Left> :echomsg "use h"<cr>   
nnoremap <Right> :echomsg "use l"<cr>  

" CTRLP      
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
