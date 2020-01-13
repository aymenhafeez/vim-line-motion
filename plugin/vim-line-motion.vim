" vim-line-motion - a bunch of functions for performing line-wise operations
" Author:	Aymen Hafeez <aymennh@gmail.com>
" Version:	0.2
" License:	MIT License
" Location:	https://github.com/aymenhafeez/vim-line-motion/

" VERY MUCH A WORK IN PROGRESS
" TODO:
"   * Merge some of the functions
"   * Get range over # of lines in current file rather than 0 - 1000
"   * Allow easy remapping of defaults

if exists("g:loaded_line_motion") || &compatible || v:version < 700
    finish
endif
let g:loaded_line_motion = 1

" Delete the nth line above/below the current position
function! DeleteLineUp(position) abort
    let cursor_position = getpos('.')
    let delete_line = a:position
    execute 'normal! ' . delete_line . 'k0dd'
    call setpos('.', cursor_position)
endfunction

function! DeleteLineDown(position) abort
    let cursor_position = getpos('.')
    let delete_line = a:position
    execute 'normal! ' . delete_line . 'j0dd'
    call setpos('.', cursor_position)
endfunction

" Move current line n lines up/down
" Cursor stays in place
function! MoveLineUp(position) abort
    let cursor_position = getpos('.')
    let move_line = a:position
    execute 'normal! dd' . move_line . 'kP'
    call setpos('.', cursor_position)
endfunction

function! MoveLineDown(position) abort
    let cursor_position = getpos('.')
    let move_line = a:position
    execute 'normal! dd' . move_line . 'jP'
    call setpos('.', cursor_position)
endfunction

" Yanks the nth line and pastes it at the current cursor position
function! YankAndPasteLine(line_number) abort
    let cursor_position = getpos('.')
    let yank_line = a:line_number
    execute 'normal! ' . yank_line . 'G"zyy'
    call setpos('.', cursor_position)
    execute 'normal!  V"zp'
endfunction

function! ReplaceLineUp(postion) abort
    let replace_line = a:position
    execute 'normal! dd' . replace_line . 'kVp'
endfunction

function! ReplaceLineDown(position) abort
    let replace_line = a:position
    execute 'normal! dd' . replace_line . 'jkVp'
endfunction

for position in range(1, 35)
    execute 'nnoremap <Leader>dk' . position . ' :call DeleteLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>dj' . position . ' :call DeleteLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>k' . position . ' :call MoveLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>j' . position . ' :call MoveLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>pl' . position . ' :call YankAndPasteLine(' . position . ')<CR>'
    execute 'nnoremap <Leader>rk' . position . ' :call ReplaceLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>rj' . position . ' :call ReplaceLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>mk' . position . ' :m-' . position . '<CR>'
    execute 'nnoremap <Leader>mj' . position . ' :m+' . position . '<CR>'
endfor
