set rtp+=~/.vim/bundle/gruvbox                                             
autocmd vimenter * nested colorscheme gruvbox                              
set bg=dark                                                                
set number                                                                 
set autoindent                                                             
set smartindent                                                            
set smarttab                                                               
syntax on                                                                  
set tabstop=4                                                              
set shiftwidth=4                                                           
set incsearch                                                              
set hlsearch                                                               
set smartcase                                                              
set ignorecase
set showmatch                                                              
set foldcolumn=1                                                           
set noswapfile                                                             
set noerrorbells                                                           
set cursorline                                                             
set laststatus=2 
set statusline=%{StatuslineGit()}\ \[%n]\ %<%f\ \|\ \%M%R%H%W%Y\ \|\ \%{&ff     }\ \|\ \ %=\ \%p%%\ \|\ \%l:%c\ \|                                         
                                                                         
function! GitBranch()                                                      
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction                                                                
                                                                             
 function! StatuslineGit()                                                  
  let l:branchname = GitBranch()                                           
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''                 
 endfunction
