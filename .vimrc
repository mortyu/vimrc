"general 
set nocompatible
set number
set hlsearch
set nobackup
set viminfo+=!
set ruler
set backspace=start,eol,indent
set linebreak
set cursorline
autocmd BufEnter * set cursorline
autocmd BufLeave * set nocursorline
set rulerformat=%30(%=%m%r%h%w\ %p%%\ %l:%v\ %{(&fenc!=''?&fenc:&enc).(&ff!='unix'?','.&ff:'')}%<%)
set laststatus=2
set statusline=%<%F\ %m%r%h%w%=%p%%\ %l:%v\ %{(&fenc!=''?&fenc:&enc).(&ff!='unix'?','.&ff:'')}

filetype plugin indent on 
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end


"key mapping
let mapleader=","
map j gj
map b F
nmap ' `
nmap 0 ^


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"encoding
set fileencodings=utf-8,cp936,utf-8,ucs-bom
set encoding=utf-8
set termencoding=utf-8
language message en_US.utf8

"programming
syntax on
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set cindent
set ignorecase 
set smartcase
set shiftwidth=4
set colorcolumn=80

"programming.cscope
if has('cscope')
    set cscopetag nocscopeverbose
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
endif
set errorformat=%E\"%f\"\\,%l\\,%c\\,error\\,\"%m\"\\,%*[a-zA-Z.],%W\"%f\"\\,%l\\,%c\\,warning\\,\"%m\"\\,%*[a-zA-Z.],Line\\,Column\\,Severity\\,Message\\,source


"color
set t_Co=256
colorscheme molokai
set fillchars=stl:-,stlnc:-
hi CursorLine cterm=none ctermbg=234
hi LineNr ctermfg=darkgrey ctermbg=none
hi VertSplit ctermfg=darkblue ctermbg=none cterm=none
hi StatusLine guifg=black gui=none        ctermfg=blue ctermbg=none cterm=none term=none
hi StatusLineNC  guifg=blue gui=none     ctermfg=grey ctermbg=none cterm=none term=none
hi Normal ctermfg=249 ctermbg=none
hi Function ctermfg=darkgreen ctermbg=none
hi PreProc ctermfg=darkgreen ctermbg=none
hi Visual ctermbg=darkblue 
hi Pmenu ctermbg=darkblue
hi ColorColumn ctermbg=none ctermfg=red 
hi FoldColumn ctermfg=234 ctermbg=none
hi Folded ctermbg=none
hi NonText         ctermfg=233 ctermbg=none
hi Special         ctermfg=none ctermbg=none
hi Directory ctermfg=darkgray



"NERDTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>p :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
let g:NERDTreeWinSize = 50

"taglist"
let Tlist_WinWidth = 50 
let Tlist_Show_One_File = 1   
let Tlist_Exit_OnlyWindow = 1
hi MyTagListFileName ctermbg=none
nmap <silent> <Leader>t :TlistToggle<CR>

"winmanager
let g:NERDTree_title='[NERDTree]'
let g:winManagerWindowLayout = "NERDTree|TagList"
nmap <silent> <leader>p :WMToggle<cr>
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"pathogen
call pathogen#infect()

let g:ctrlp_map = '<c-f>'
