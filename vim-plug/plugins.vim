" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

if has('vim')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()
endif


" disable ale lsp
let g:ale_disable_lsp = 1

" Run PlugInstall if there are missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


call plug#begin('~/.config/nvim/autoload/plugged')
" auto recognize color
Plug 'gko/vim-coloresque'
Plug 'liuchengxu/vim-which-key'
Plug 'itchyny/lightline.vim'
Plug 'ChristianChiarulli/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'jistr/vim-nerdtree-tabs'
" A git commit browser.
Plug 'junegunn/gv.vim'
" zen mode of vim
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'kassio/neoterm'
Plug 'benmills/vimux'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'unblevable/quick-scope'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'sirver/ultisnips'
Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-dirvish'
Plug 'Yggdroot/indentLine'
Plug 'metakirby5/codi.vim'

" telescope
if has("nvim")
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'iamcco/markdown-preview.nvim'
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'kabouzeid/nvim-lspinstall'
  " Plug 'glepnir/lspsaga.nvim'
  Plug 'itchyny/vim-cursorword'
  Plug 'hrsh7th/nvim-compe'
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif
if !has("nvim")
  Plug 'sillybun/vim-repl'
endif

Plug 'skywind3000/asyncrun.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'liuchengxu/vista.vim'
Plug 'phanviet/vim-monokai-pro'

call plug#end()
