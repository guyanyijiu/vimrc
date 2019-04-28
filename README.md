# vimrc

## Dependencies
```
yum install the_silver_searcher
```

## Install vimrc
```
git clone --depth=1 https://github.com/guyanyijiu/vimrc.git ~/.vim
sh ~/.vim/install_full_vimrc.sh
```

## Install vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Install plugins
```
:PlugInstall
```

## Key Mappings

Fast saving and quit
```
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
```

:W sudo saves the file
```
command W w !sudo tee % > /dev/null
```

Visual mode pressing * or # searches for the current selection
```
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
```

Disable highlight
```
map <silent> <leader><cr> :noh<cr>
```

Window
```
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```

Buffer 
```
" Close the current 
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Quickly open a buffer for scribble
map <leader>bn :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>bm :e ~/buffer.md<cr>

map <leader>bk :bnext<cr>
map <leader>bj :bprevious<cr>
```

Tab
```
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tl :tabnext<cr>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
```

Move a line of text using SHIFT+[jk]
```
nmap <s-j> :m+<cr>
nmap <s-k> :m-2<cr>
vmap <s-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <s-k> :m'<-2<cr>`>my`<mzgv`yo`z
```

Spell checking
```
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
```

Remove the Windows ^M - when the encodings gets messed up
```
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
```

Toggle paste mode on and off
```
map <leader>pp :setlocal paste!<cr>
```

Command
```
" $q is super useful when browsing on the command line
" it deletes everything until the last slash
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
```

NERDTree
```
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<Space>
nnoremap <leader>nf :NERDTreeFind<cr>
```

LeaderF
```
nnoremap <leader>ff :LeaderfFile<cr>
nnoremap <leader>fb :LeaderfBuffer<cr>
nnoremap <leader>fm :LeaderfMruCwd<cr>
```

Goyo
```
nnoremap <silent> <leader>z :Goyo<cr>
```

Tabular
```
nmap <leader>t :Tab /
vmap <leader>t :Tab /
```

Ack
```
" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
map <leader>g :Ack<Space>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>
```

Autoformat
```
nnoremap <leader>l :Autoformat<cr>
```
