"=============================================================================
" FILE: autoload/bindsplit.vim
" AUTHOR:  Joshua T Corbin <jcorbin at wunjo dot org>
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"=============================================================================

" borrowed from https://github.com/neovim/neovim/issues/3896#issuecomment-167014665

function! bindsplit#vsplit(...) abort
    if a:0
        let l:count=(a:1 - 1)
    else
        let l:count=1
    endif
    echom l:count
    let l:origwin=winnr()
    for i in range(1, l:count)
        vsplit
        execute (winnr() + 1) . "wincmd w"
        execute "normal! z+"
    endfor
    for i in range(l:count, 0, -1)
        execute (l:origwin + i) . "wincmd w"
        setlocal scrollbind
    endfor
    execute l:origwin . "wincmd w"
endfunction
