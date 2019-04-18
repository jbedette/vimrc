filetype indent plugin on
syntax on " turn on syntax highlighting
set number " line numbers
set ruler
" set cursorline
color zellner 
"color desert 
set background=dark

" search options
" highlight search results, toggle with :set highlight! or disable with :noh
set hlsearch
 " show incremental matches to search options as it is being typed
set incsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set nostartofline
set autoindent
set laststatus=2 " always display status
set confirm
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set smartindent
set splitright
set splitbelow

"remap split nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>


"$ and ^ are stupid
nnoremap B ^
nnoremap E $

"remap jk to move visually 
nnoremap j gj
nnoremap k gk

"remap tabnew 
cnoreabbrev th tabnext<CR>
cnoreabbrev tl tabprev<CR>
cnoreabbrev tn tabnew

"remap resize
cnoreabbrev rs vertical resize -15 
cnoreabbrev rl vertical resize +15

"we all know what this is for
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

" save on refocus
:au FocusLost * :wa " will complain on untitled and read-only buffers
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" function to restore cursor position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

" autocommands
" restore cursor
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


