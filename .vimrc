set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-surround.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'vim-scripts/ruby-matchit.git'
Bundle 'bronson/vim-trailing-whitespace.git'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'ervandew/supertab.git'

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

"vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

"save on ctrl+s
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>a"

"tabs
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew<CR>
