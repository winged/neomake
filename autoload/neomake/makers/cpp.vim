" vim: ts=4 sw=4 et

function! neomake#makers#cpp#EnabledMakers()
    return ['clang']
endfunction

function! neomake#makers#cpp#clang()
    return {
        \ 'exe': 'clang++',
        \ 'args': ['-fsyntax-only'],
        \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
        \ }
endfunction
