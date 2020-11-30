if exists('g:loaded_byoa') || &cp || v:version < 700
  finish
endif
let g:loaded_byoa = 1

function! s:isCoding()
  return !exists("g:byoa_writing") || ! g:byoa_writing
endfunction

" Don't use Surround default mappings
let g:surround_no_mappings = 1

" Don't use Fugitive mappings
let g:fugitive_no_maps = 1

" Set the mapping for this plugin so <leader>hlt mapping doesn't conflict with Vim Split <leader>h mapping.
map <s-F10> <Plug>HiLinkTrace

noremap <leader>qq ZZ
noremap <leader>QQ ZQ
noremap <leader>l H
noremap <leader>n M
noremap <leader>h L
noremap <leader>k *
noremap <leader>K #
noremap <leader><tab> K
noremap <leader>ex Q
if s:isCoding()
  " Coding
  noremap <leader>, (
  noremap <leader>. )
  noremap <leader>< {
  noremap <leader>> }
else
  " Writing
  noremap <leader>, <C-f>
  noremap <leader>. <C-b>
  noremap <leader>< <C-d>
  noremap <leader>> <C-u>
endif

" <esc> fixes an issue where indent occurs again after (un)indenting and moving away from a visual selection 
noremap <tab> >><esc>
noremap <S-tab> <<<esc>
" re-mapping shift-backspace seems impossible
" noremap <S-bs> !#@
noremap <bs> `
noremap <del> '
noremap <C-g> <C-v>
noremap <C-v> <nop>
noremap ! q
noremap # !
noremap ## !!
" left r1
noremap q .
noremap Q Z
noremap w u
noremap W <C-r>
noremap f x
noremap F X
" noremap p p
" noremap P P
noremap b ~
noremap B J
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
noremap z r
noremap Z R
noremap x c
noremap X C
noremap c d
noremap C D
noremap d y
noremap D Y
noremap v m
noremap V "
" right r1
noremap j t
noremap J T
noremap l 0
noremap L _
noremap u ^
noremap U -
noremap y $
noremap Y +
" noremap ; ;
noremap ' ;
noremap " ,
" right r2
noremap m f
noremap M F
noremap n ge
noremap N gE
noremap e b
noremap E B
noremap i w
noremap I W
noremap o e
noremap O E
" right r3
noremap k /
noremap K ?
noremap h g
noremap H G
if s:isCoding()
  " Coding
  noremap , <C-f>
  noremap . <C-b>
  noremap < <C-d>
  noremap > <C-u>
else
  " Writing
  noremap , (
  noremap . )
  noremap < {
  noremap > }
endif
noremap / n
noremap ? N
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


