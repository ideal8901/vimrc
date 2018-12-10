set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
call vundle#end()            " required
filetype plugin indent on    " required
function NERDtreeAndTagbarOpen()
    TagbarOpen
    NERDTree
    wincmd K
    wincmd j
    wincmd H
    wincmd b
    exe "vertical resize 50"
    wincmd t
endfunction

au VimEnter * call NERDtreeAndTagbarOpen()

" Tagbar
let tagbar_compact = 1

" NERDTree
let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" Toggles
nmap <silent> <F8> :TagbarToggle<cr>
nmap <silent> <F9> :NERDTreeToggle<cr>

set tags+=/home/sgx3/NestedSGX/linux-sgx-driver/tags

set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

au BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "norm g`\"" |
	\ endif

if has("syntax")
	syntax on
endif

colorscheme jellybeans

set t_Co=256
set bg=dark

