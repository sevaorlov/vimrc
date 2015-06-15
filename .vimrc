set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
" ends if,do,def,etc
Plugin 'tpope/vim-endwise'
" git wrapper
Plugin 'tpope/vim-fugitive'
" jumping keys for cucumber steps
Plugin 'tpope/vim-cucumber'

Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'thoughtbot/vim-rspec'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
" insert completion by Tab
Plugin 'ervandew/supertab'
" easy comments
Plugin 'tomtom/tcomment_vim'
" highlight colors in css
Plugin 'skammer/vim-css-color'

" align lines by a pattern
Plugin 'godlygeek/tabular'

" tags
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'

Plugin 'bkad/CamelCaseMotion'

Plugin 'eparreno/vim-l9'
Plugin 'vim-scripts/FuzzyFinder'

Plugin 'duythinht/inori'
Plugin 'romainl/flattened'


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

"colorscheme
set background=dark
colorscheme solarized


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
map <C-j> <Esc>:tabprev<CR>
map <C-k> <Esc>:tabnext<CR>
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

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ','
nmap <leader>v :tabedit $MYVIMRC<CR>
