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

" align lines by a pattern
Plugin 'godlygeek/tabular'

Plugin 'bkad/CamelCaseMotion'

Plugin 'duythinht/inori'
Plugin 'romainl/flattened'

" Plugin 'fatih/vim-go'

" Plugin 'bling/vim-airline'

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" highlights errors
" Plugin 'scrooloose/syntastic'

" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" cjsx syntax highlighting
" Plugin 'mtscout6/vim-cjsx'

syntax enable
filetype plugin indent on

" vi no compatible
set nocompatible
" mostly does the right thing
set smartindent

set runtimepath^=~/.vim/bundle/*
set relativenumber
set number
set tabstop=2
set shiftwidth=2
set expandtab
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set list listchars=tab:>-,trail:~,extends:>,precedes:<
set autowrite " save file automatic on shell commands
set ruler
set laststatus=2 " always show status line
set smartcase
let mapleader="\<Space>"
set autoindent " Auto indention should be on "
set clipboard=unnamed " Copy buffer

"colorscheme
set background=dark
colorscheme solarized

"line length
set textwidth=120
set cc=+1
hi ColorColumn ctermbg=7

set inccommand=split

"vim-rspec
if executable('zeus')
  let g:rspec_command = '!zeus test {spec}'
endif
if executable('./bin/rspec')
  let g:rspec_command = '!./bin/rspec {spec}'
endif
au BufRead *_spec.rb nmap <Leader>r :call RunCurrentSpecFile()<CR>
au BufRead *_spec.rb nmap <Leader>s :call RunNearestSpec()<CR>
au BufRead *_spec.rb nmap <Leader>l :call RunLastSpec()<CR>
" au BufRead *_spec.rb nmap <Leader>a :call RunAllSpecs()<CR>

"save on ctrl+s
nmap <C-s> :w<CR>
vmap <C-s> <Esc><c-s>gv
imap <C-s> <Esc><c-s>

"tabs
map <C-j> <Esc>:tabprev<CR>
map <C-k> <Esc>:tabnext<CR>
map <C-t> <Esc>:tabnew<CR>

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"tags
set tags=.tags;

"tabular
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
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

" open vimrc with leader+v
nmap <leader>v :tabedit ~/.vimrc<CR>

" select word in visual mode and press //, it will immediately search for a given word
vnoremap // y/<C-R>"<CR>"

" snippets
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind leader+w to grep word under cursor
nnoremap <leader>w :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap \ :Ag<SPACE>

" quickfix list for breakpoints
nmap <Leader>i :Ag binding.pry<CR>

" quickfix, open files in new tab
" set switchbuf+=usetab,newtab

" open and close quickfix
nnoremap <leader>c :ccl<CR>
nnoremap <leader>o :cope<CR>

" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" puts method source location
nnoremap <leader>method oputs "#" * 90<c-m>puts method(:).source_location<c-m>puts "#" * 90<esc>

" binding.pry
nnoremap <leader>deb obinding.pry<esc>

" turns on logs in STDOUT in rails tests
nnoremap <leader>log oputs "ActiveRecord::Base.logger = Logger.new(STDOUT)<esc>

" GO
nnoremap <leader>gop ofmt.Println("############")<c-m>fmt.Println()<c-m>fmt.Println("############")<UP><LEFT>

let g:go_fmt_command = ""
" let g:go_fmt_command = "goimports"
" let g:syntastic_go_checkers = ['gometalinter']
let g:go_def_mapping_enabled = 0

au FileType go set list listchars=tab:\ \ ,
au FileType go nmap <Leader>goi :GoImports<CR>
au FileType go nmap <Leader>gd :GoDoc<CR>

"
nmap <Leader>gb :Gbrowse<CR>
