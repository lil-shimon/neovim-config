cnoremap init :<C-u>edit $MYVIMRC<CR>                           
noremap <Space>s :source $MYVIMRC<CR>                          
noremap <Space>w :<C-u>w<CR>                                    

set shell=fish
set completeopt=menuone,noinsert,noselect

"-----------------------------------------
"              Linter (ale)
"-----------------------------------------
" C-k -> 前の警告へジャンプ C-j -> 後ろの警告へジャンプ
"
let b:ale_linters = {
\   'javascript': ['eslint', 'eslint-plugin-vue'],
\   'python': ['pyflakes', 'pep8'],
\   'ruby': ['rubocop'],
\   'tex': ['textlint'],
\   'markdown': ['textlint'],
\   'css': ['stylelint'],
\}

let g:ale_statusline_format = ['E%d', 'W%d', 'ok']
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

let g:maplocalleader = 'm'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_fix_auto_save = 1

" ローカルの設定ファイルを考慮する
let g:ale_javascript_prettier_use_local_config = 1


"-----------------------------------------
"              ColorScheme
"-----------------------------------------
set termguicolors     " enable true colors support
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 
let g:seiya_auto_enable=1 "背景透過 for vim
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg'] "for neovim


"-----------------------------------------
"              easymotion
"-----------------------------------------
map  <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap ff <Plug>(easymotion-overwin-f2)

" Move to line
map  <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nmap m <Plug>(easymotion-s2)
xmap m <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(easymotion-t2)

map  <Leader>/ <Plug>(easymotion-sn)
omap <Leader>/ <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  P <Plug>(easymotion-prev)

map  <Leader>l <Plug>(easymotion-lineforward)
map  <Leader>j <Plug>(easymotion-j)
map  <Leader>k <Plug>(easymotion-k)
map  <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

nnoremap m  <Nop>

" Search
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set pumblend=10

set suffixesadd=.js,.ts,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescript

" Insert Modas
inoremap <silent> jj <ESC>
map <Leader> <Plug>(easymotion-prefix)

" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                 
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting                                                                           
set encoding=utf-8

" editer setting
set relativenumber
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
set clipboard+=unnamed
set laststatus=2

"keymap
let g:mapleader = "\<Space>"
nnoremap <Leader>w :w<CR> 
nnoremap <Leader>q :q<CR> 
nnoremap <ESC><ESC> :nohlsearch<CR> 
nnoremap <Leader>. :new ~/.config/nvim/init.vim<CR>

"search files (fzf)
nmap ;f :FZF<CR>
nmap <Leader>ag :Ag<CR>


"cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト
set cursorcolumn
filetype on


" ---------------------------------------
"           window settings 
" ---------------------------------------
"Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" More window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Resize Window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-


" ---------------------------------------
"        vim to browser settings 
" ---------------------------------------

"open-browser
nmap <Leader>b <Plug>(openbrowser-smart-search)
vmap <Leader>b <Plug>(openbrowser-smart-search)


" ---------------------------------------
"           indent settings 
" ---------------------------------------  

" tab setting
set expandtab                                                   
set tabstop=2                                                   
set shiftwidth=2                                                
set autoindent
set smartindent

augroup vimrc-filetype
  autocmd!
 " ---------------------------------------
 "           php indent settings 
 " ---------------------------------------
  autocmd BufNewFile,BufRead *.php set filetype=php
  autocmd FileType php setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4


if &compatible    
  set nocompatible               " Be iMproved    
endif  


" ---------------------------------------
"           dein settings 
" ---------------------------------------
" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim


let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
let s:toml_dir = expand('~/.config/nvim')    

if dein#load_state(s:dein_dir)    
 call dein#begin(s:dein_dir)    
 call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
 call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
 call dein#end()           
 call dein#save_state()    
endif                        

if dein#check_install()                                       
  call dein#install()      
endif     

let g:dein#auto_recache = 1



 " ---------------------------------------
 "               vim plug 
 " ---------------------------------------
if has('nvim')
  let g:plughome = stdpath("data").'plugged'
endif

call plug#begin()

"  ---------------------------------------
"                lspconfig 
"  ---------------------------------------
Plug 'neovim/nvim-lspconfig',


"  ---------------------------------------
"                lspsaga 
"  ---------------------------------------
Plug 'glepnir/lspsaga.nvim'
" show hover doc


"  ---------------------------------------
"              treesitter 
"  ---------------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


"  ---------------------------------------
"               telescope 
"  ---------------------------------------
Plug 'nvim-telescope/telescope.nvim'
nnoremap <silent> <C-P> <cmd>Telescope find_files<cr>
nnoremap <silent> <C-L> <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>



"  ---------------------------------------
"                icons 
"  ---------------------------------------
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'


"  ---------------------------------------
"              status line 
"  ---------------------------------------
Plug 'hoob3rt/lualine.nvim'



"  ---------------------------------------
"            lua snip (future) 
"  ---------------------------------------
Plug 'L3MON4D3/LuaSnip/'

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'


Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" ---------------------------------------
"           formatter 
" ---------------------------------------
Plug 'mhartington/formatter.nvim'

" ---------------------------------------
"           php-cs-fixer 
"         (delete in future)
" ---------------------------------------
Plug 'aeke/vim-php-cs-fixer'
" If php-cs-fixer is in $PATH, you don't need to define line below
let g:php_cs_fixer_path = "~/.php_cs"

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>


" ---------------------------------------
"           wakatime.vim 
"         programming stats
" ---------------------------------------
Plug 'wakatime/vim-wakatime'

call plug#end()

