"タブを空白2個分にする↲
set tabstop=2
"行番号表示
set number
"シンタックスカラーをつける
syntax on

"クリップボーと有効化
set clipboard=unnamedplus
"タブを空白とする
set expandtab

"タブ、空白、改行の可視化
set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"全角スペースをハイライト表示
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
