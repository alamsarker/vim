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
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'kien/ctrlp.vim'        
"Plugin 'shawncplus/phpcomplete.vim'    
Plugin 'itchyny/lightline.vim' 
"Plugin 'terryma/vim-multiple-cursors'  
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
Plugin 'scrooloose/syntastic'


" All of your Plugins must be added before the following line    
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

"----------------------------ctag----------------------------------------------
"Install Ctags: apt-get install catgs
"

set tags=tags

"----------------------------ctag----------------------------------------------

let g:ackprg="ack -H --nocolor --nogroup --column"
nmap <leader>a :tab split<CR>:Ack ""<Left>

"Immediately Search for the word under the cursor in a new tab
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>

"----------------------------ACK----------------------------------------------
" ---------------PHP UNIT TEST---------------------------------------------
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
let g:test#php#phpunit#executable = 'docker exec food_api_fpm vendor/bin/phpunit'

" ---------------PHP UNIT TEST---------------------------------------------

"----------------Syntastic-------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpcs_exe = 'docker run -it --rm -v "$(pwd)":/app phpcs'
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args = '--standard=PSR2 -n'

"----------------Syntastic-------------------------------------------------

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
" ===============encoding=========
set encoding=utf-8


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
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|app/cache\|bower_components'

"Vdebug and xdebug settings

if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options.break_on_open = 1
let g:vdebug_options.port = 9001
let g:vdebug_options.server = 127.18.0.1
let g:vdebug_options.path_maps = {"/var/www/html": "/home/kausar/workspace/foods-api"}

if !exists('g:vdebug_features')
    let g:vdebug_features = {}
endif
    let g:vdebug_features.max_children = 128
