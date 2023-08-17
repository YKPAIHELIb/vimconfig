set incsearch
set hlsearch
set ignorecase
"set cursorline
set backspace=indent,eol,start
set whichwrap=b,s,<,>,h,l   " wrap backspace and cursors correctly
set scrolloff=5
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
 
" 4 space identation setup
set expandtab       " Use spaces instead of tabs
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set softtabstop=4   " Number of spaces that a <Tab> counts for while performing editing operations
set tabstop=4       " Number of spaces that a <Tab> in the file counts for

set clipboard=unnamed
set relativenumber
set number

let mapleader=" "

nnoremap <Esc> :noh<CR>
nnoremap <leader>/ "zyiw/<C-R>z<CR>
vnoremap <leader>/ "zy/<C-R>z<CR>
nnoremap <leader>? "zyiw:%s/<C-R>z//gc<LEFT><LEFT><LEFT>
vnoremap <leader>? "zy:%s/<C-R>z//gc<LEFT><LEFT><LEFT>

"noremap <leader>sa :vsc Edit.GoToAll<CR>
"noremap <leader>sf :vsc Edit.GoToFile<CR>
"noremap <leader>st :vsc Edit.GoToType<CR>
"noremap <leader>sm :vsc Edit.GoToMember<CR>

nnoremap <A-j> :m.+1<CR>V==<Esc>^
nnoremap <A-k> :m.-2<CR>V==<Esc>^
inoremap <A-j> <Esc>:m.+1<CR>V==<Esc>^
inoremap <A-k> <Esc>:m.-2<CR>V==<Esc>^

" Navigation
" ----------
"nmap gb :vsc View.NavigateBackward<CR>
"nmap gf :vsc View.NavigateForward<CR>
"vmap gb :vsc View.NavigateBackward<CR>
"vmap gf :vsc View.NavigateForward<CR>

" Close tab
"map gk :vsc Edit.PreviousMethod<CR>
"map gj :vsc Edit.NextMethod<CR>
"map gh :vsc Edit.PreviousHighlightedReference<CR>
"map gl :vsc Edit.NextHighlightedReference<CR>

" gd goes to definition by default
"map gr :vsc Edit.FindAllReferences<CR>
"map gi :vsc Edit.GoToImplementation<CR>
"map gp :vsc Edit.PeekDefinition<CR>
"map gp :vsc Edit.GoToBase<CR>

" keep search results in the center of the screen
nnoremap n nzz
nnoremap N Nzz

" Various GUI features
" --------------------

" map <Leader>b :vsc Debug.ToggleBreakpoint<CR>

" map <Leader>i :vsc Edit.QuickInfo<CR>

" Making edits
" ------------
" add empty lines with no insert mode
nmap <S-enter> O<Esc>
nmap <enter> o<Esc>

nnoremap <S-space> i<space><Esc>

" delete char without yank
noremap x "_x
noremap X "_X

" H/L is more natural than 0/$
map H ^
map L g_

"copy line without CR
noremap Y ^y$

"noremap + :vsc Edit.CommentSelection <return>
"noremap - :vsc Edit.UncommentSelection <return>

if exists('g:vscode')
    nnoremap <leader>i <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
else
    " ordinary Neovim
endif

