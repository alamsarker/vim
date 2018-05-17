set nocompatible                                                                                                                       
filetype off                                                                                                                           
                                                                                                                                       
" set the runtime path to include Vundle and initialize                                                                                
 set rtp+=~/.vim/bundle/Vundle.vim                                                                                                     
 call vundle#begin()                                                                                                                   
                                                                                                                                       
" let Vundle manage Vundle, required                                                                                                   
                                                                                                                                       
Plugin 'gmarik/Vundle.vim'                                                                                                             
Plugin 'scrooloose/nerdtree'                                                                                                           
Plugin 'morhetz/gruvbox'                                                                                                               
Plugin 'nathanaelkane/vim-indent-guides'                                                                                               
Plugin 'airblade/vim-gitgutter'                                                                                                        
Plugin 'junegunn/fzf'                                                                                                                  
Plugin 'valloric/youcompleteme'                                                                                                        
Plugin 'kien/ctrlp.vim'                                                                                                                
Plugin 'shawncplus/phpcomplete.vim'                                                                                                    
Plugin 'itchyny/lightline.vim'                                                                                                         
Plugin 'terryma/vim-multiple-cursors'                                                                                                  
                                                                                                                                       
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
" let g:indent_guides_enable_on_vim_startup = 1                                                                                        
set ts=4 sw=4 et                                                                                                                       
let g:indent_guides_start_lavel=2                                                                                                      
let g:indent_guides_guide_size=1
set guicursor=i:ver25-iCursor                                                                                                          
"let g:gitgutter_terminal_reports_focus = 0                                                                                            
                                                                                                                                       
" tmux setting                                                                                                                         
set term=screen-256color                                                                                                               
                                                                                                                                       
" highlish search                                                                                                                      
set hlsearch                                                                                                                           
set nu                                                                                                                               
                                                                                                                                       
nnoremap <Up> :echomsg "use k"<cr>                                                                                                     
nnoremap <Down> :echomsg "use j"<cr>                                                                                                   
nnoremap <Left> :echomsg "use h"<cr>                                                                                                   
nnoremap <Right> :echomsg "use l"<cr>                                                                                                  
                                                                                                                                       
" CTRLP                                                                                                                                
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden                                                                      
      \ --ignore .git                                                                                                                  
      \ --ignore cache                                                                                                                 
      \ --ignore node_modulues                                                                                                         
      \ --ignore docs                                                                                                                  
      \ --ignore logs                                                                                                                  
      \ --ignore web/components                                                                                                        
      \ --ignore data                                                                                                                  
      \ --ignore .svn                                                                                                                  
      \ --ignore .hg                                                                                                                   
      \ --ignore .DS_Store                                                                                                             
      \ --ignore "**/*.pyc"                                                                                                            
      \ -g "
