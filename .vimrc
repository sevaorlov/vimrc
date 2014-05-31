set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ervandew/supertab'

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

"vim-rspec
let g:rspec_command = '!zeus test {spec}'
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"save on ctrl+s
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a"

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
