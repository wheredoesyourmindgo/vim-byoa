if exists('g:loaded_byoa') || &cp || v:version < 700
  finish
endif
let g:loaded_byoa = 1

" function! s:isCoding()
"   return !exists("g:byoa_writing") || ! g:byoa_writing
" endfunction

if exists("g:byoa_keymap")
  let s:byoa_keymap = g:byoa_keymap
else
  let s:byoa_keymap = 'colemak-dh'
endif

if s:byoa_keymap == 'colemak-dh'
  let s:r1c10 = ";"
  let s:R1C10 = ":"
  let s:r2c11 = "'"
elseif s:byoa_keymap == 'qwerty'
  let s:r1c10 = "p"
  let s:R1C10 = "P"
endif

" Plugin order in .vimrc matters
" Don't use Surround default mappings
let g:surround_no_mappings = 1
" Don't use Fugitive mappings
let g:fugitive_no_maps = 1

" Set the mapping for this plugin so <leader>hlt mapping doesn't conflict with Vim Split <leader>h mapping.
map <s-F10> <Plug>HiLinkTrace

" Leaders --------------------------

" Quit w/ save
noremap <leader>q ZZ
" Quit w/o save
noremap <leader>Q ZQ
" Screen Top
noremap <leader>. H
" Screen Mid
noremap <leader>k M
" Screen Bottom
noremap <leader>, L
" Scroll Top
noremap <leader>y zt
" Scroll Mid
noremap <leader>j zz
" Scroll Bottom
noremap <leader>u zb
" Next instance of current word
noremap <leader>? *
" Previous instance of current word
noremap <leader>H #
" Extra commands
noremap <leader>z z
" Hard Bol
noremap <leader>l 0
" Extra commands (alt)
noremap <leader>g g
" End of file / Goto line (alt)
noremap <leader>G G
" Expert mode
noremap <leader>x Q
" Prev. end word (non-whitespace)
noremap <leader>n gE
" Prev. beginning word (non-whitespace)
noremap <leader>e B
" Prev. beginning word (non-whitespace)
noremap <leader>i W
" Prev. end word (non-whitespace)
noremap <leader>o E
" Help
noremap <leader>b K
" Goto mark
noremap <leader>v `
" Goto mark bol
noremap <leader>V '
" Repeat command
" noremap <leader><space> .
" Save
noremap <leader><cr> :w<cr>

" Mod Outer/Mod/Symbol Commands --------------------------

" <esc> fixes an issue where indent occurs again after (un)indenting and moving away from a visual selection
" Indent
noremap <tab> >><esc>
" Un-indent
noremap <S-tab> <<<esc>
" re-mapping shift-backspace seems impossible
" noremap <S-bs> !#@
" Visual Block Mode
noremap <C-g> <C-v>
noremap <C-v> <nop>
" Record macro
noremap ! q
" External filter
noremap # !
noremap ## !!

" Alpha Commands --------------------------

" left r1
noremap q x
noremap Q "
noremap ! <C-r>
noremap w r
noremap W R
noremap f c
noremap F C
noremap p .
noremap P ~
" noremap b X
noremap <bs> X
noremap b J
" left r2
noremap a s
noremap A S
noremap r i
noremap R I
noremap s a
noremap S A
noremap t o
noremap T O
noremap g v
noremap G V
" left r3
noremap z u
noremap Z U
noremap x d
noremap X D
noremap c y
noremap C Y
noremap d p
noremap D P
noremap v <C-r>
noremap V m
" right r1
noremap j f
noremap J F
noremap l _
noremap L ,
noremap u +
noremap U <C-e>
noremap y -
noremap Y <C-y>
" noremap ; ;
execute 'noremap ' . s:r1c10 . ' $'
execute 'noremap ' . s:R1C10 . ' ;'
" right r2
noremap m t
noremap M T
noremap n ge
" noremap N gE
noremap N {
noremap e b
" noremap E B
noremap E (
noremap i w
" noremap I W
noremap I )
noremap o e
" noremap O E
noremap O }
execute 'noremap ' . s:R2C11 . ' :'
" right r3
noremap k /
noremap K ?
noremap h g
noremap H N
noremap , <C-d>
noremap . <C-u>
noremap < <C-f>
noremap > <C-b>
noremap / G
noremap ? n
" g mappings
noremap h# g#
noremap h$ g$
noremap h& g&
noremap h' g'
noremap h` g`
noremap h* g*
noremap h+ g+
noremap h, g,
noremap h- g-
noremap h0 g0
noremap h8 g8
noremap h; g;
noremap h< g<
noremap h? g?
noremap h?? g??
noremap h?h? g?g?
noremap hD gD
noremap hE gE
noremap hH gH
" noremap hI gI
noremap hS gI
noremap hJ gJ
noremap hN gN
noremap hP gP
noremap hQ gQ
" noremap hR gR
noremap hZ gR
noremap hT gT
noremap hU gU
" noremap hV gV
noremap hG gV
noremap h] g]
noremap h^ g^
noremap h_ g_
noremap ha ga
noremap hd gd
noremap he ge
noremap hf gf
noremap hF gF
" noremap hg gg
" noremap hh gh
noremap hh gg
" noremap hg gh
noremap hv gh
" noremap hi gi
noremap hs gi
noremap hj gj
noremap hk gk
noremap hn gn
noremap hm gm
noremap hM gM
noremap ho go
noremap hp gp
noremap hq gq
" noremap hr gr
noremap hz gr
" Sleep is interfering with insert, "l" (think 'lock') is one of the few candidates available
" noremap hs gs
noremap hl gs
noremap ht gt
noremap hu gu
" noremap hv gv
noremap hg gv
noremap hw gw
noremap hx gx
noremap h@ g@
noremap h~ g~
noremap h<Down> g<Down>
noremap h<End> g<End>
noremap h<Home> g<Home>
noremap h<LeftMouse> g<LeftMouse>
noremap h<MiddleMouse> g<MiddleMouse>
noremap h<RightMouse> g<RightMouse>
noremap h<Tab> g<Tab>
noremap h<Up> g<Up>