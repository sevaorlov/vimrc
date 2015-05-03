set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
" ends if,do,def,etc
Bundle 'tpope/vim-endwise'
" git wrapper
Bundle 'tpope/vim-fugitive'
" jumping keys for cucumber steps
Bundle 'tpope/vim-cucumber'

Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
" insert completion by Tab
Bundle 'ervandew/supertab'
" easy comments
Bundle 'tomtom/tcomment_vim'
" highlight colors in css
Bundle 'skammer/vim-css-color'

" align lines by a pattern
Bundle 'godlygeek/tabular'

" tags
" Bundle 'xolox/vim-easytags'
" Bundle 'xolox/vim-misc'

Bundle 'bkad/CamelCaseMotion'


syntax enable
filetype plugin indent on

set runtimepath^=~/.vim/bundle/*
set number
set tabstop=2
set shiftwidth=2
set expandtab
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set autowrite " save file automatic on shell commands
set ruler
set laststatus=2 " always show status line
set smartcase

"line length
set textwidth=120
set cc=+1
hi ColorColumn ctermbg=7

"vim-rspec
let g:rspec_command = '!zeus test {spec}'
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"save on ctrl+s
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"tabs
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-t> <Esc>:tabnew<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"fuzzyfinder
let g:fuf_enumeratingLimit = 30
nnoremap <Leader>f :FufFile **/<cr>
nnoremap <Leader>b :FufBuffer<cr>
nnoremap <Leader>t :FufTag<cr>

"tags
set tags=.tags;

"tabular
let mapleader=','
nmap <Leader>a= :Tab /=<CR>
vmap <Leader>a= :Tab /=<CR>
nmap <Leader>a: :Tab /:<CR>
vmap <Leader>a: :Tab /:<CR>
nmap <Leader>a{ :Tab /{<CR>
vmap <Leader>a{ :Tab /{<CR>

" disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"easytags
let b:easytags_auto_highlight = 0
let g:easytags_async = 1
