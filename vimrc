" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

execute pathogen#infect()

syntax on                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set history=50
set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

" set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" Softtabs, 2 spaces
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

let g:netrw_liststyle=3 " Use tree-mode as default view
"let g:netrw_browse_split=4 " Open file in previous buffer
"let g:netrw_preview=1 " preview window shown in a vertically split

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" COLORS
set background=dark
colorscheme gruvbox

" Don't syntax color lines that are too long, to prevent slowdowns
set synmaxcol=300

" Highlight special characters
set list
set listchars=nbsp:¬,tab:>-,extends:»,precedes:«,trail:•

" Map <Esc> to fd
imap fd <Esc>

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Always use vertical diffs
set diffopt+=vertical

" Russian language support
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" Switch back to English on ESC
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
autocmd FileType css setlocal foldmethod=indent nofoldenable shiftwidth=2 tabstop=2

" Settings for Markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown setlocal spell spelllang=en_us,ru_yo,pl
autocmd FileType markdown setlocal textwidth=80

autocmd BufNewFile,BufReadPost *.tex setl ft=tex
autocmd FileType tex setlocal textwidth=80 spell spelllang=en_us,ru_yo,pl
autocmd FileType plaintex setlocal textwidth=80 spell spelllang=en_us,ru_yo,pl

" vim-liquid: Set subtype for Shopify alternate templates
au BufNewFile,BufRead */templates/**.liquid,*/layout/**.liquid,*/snippets/**.liquid
      \ let b:liquid_subtype = 'html' |
      \ set ft=liquid |
au BufNewFile,BufRead */assets/**.js.liquid
      \ let b:liquid_subtype = 'javascript' |
      \ set ft=liquid |

" vim-javascript bundle options
let javascript_enable_domhtmlcss=1
let b:javascript_fold=0

" vim-coffee-script bundle options
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable shiftwidth=2 expandtab

" ultisnips snippets parameters
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="horizontal"

" vim-airline options
let g:airline_left_sep=' '
let g:airline_right_sep=' '

" vim-indent-guides options
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=8

" Speed up things a bit
set nocursorline
set nocursorcolumn
set norelativenumber
set scrolljump=5
set ttyfast
syntax sync minlines=256

" Update cursor shape in different modes
if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end
