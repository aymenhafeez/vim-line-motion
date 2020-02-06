" vim-line-motion - a bunch of functions for performing line-wise operations
" Author:	Aymen Hafeez <aymennh@gmail.com>
" Version:	0.4.1
" License:	MIT License
" Location:	https://github.com/aymenhafeez/vim-line-motion/

" VERY MUCH A WORK IN PROGRESS
" TODO:
"   * Different way of taking numbered input for mappings ---> slows down
"     startup
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

" Replace the line n lines up with the current line
function! ReplaceLineUp(position) abort
    let replace_line = a:position
    execute 'normal! dd' . replace_line . 'kVp'
endfunction

" Replace the line n lines down with the current line
function! ReplaceLineDown(position) abort
    let replace_line = a:position
    execute 'normal! dd' . replace_line . 'jkVp'
endfunction

" Replace current line with line n lines above
function! ReplaceCurrentLineUp(position) abort
    let cursor_position = getpos('.')
    let replace_line = a:position
    execute 'normal! ' . replace_line . 'kyy'
    call setpos('.', cursor_position)
    execute 'normal!  Vp'
endfunction

" Replace current line with line n lines above
function! ReplaceCurrentLineDown(position) abort
    let cursor_position = getpos('.')
    let replace_line = a:position
    execute 'normal! ' . replace_line . 'jyy'
    call setpos('.', cursor_position)
    execute 'normal!  Vp'
endfunction

" move line and cursor n lines up
function! MoveLineAndCursorUp(position) abort
    let move_line = a:position
    execute 'normal! dd' . move_line . 'kP'
endfunction

" move line and cursor n lines down
function! MoveLineAndCursorDown(position) abort
    let move_line = a:position
    execute 'normal! dd' . move_line . 'jP'
endfunction

" Swap current line with line n lines up/down
function! SwapLineUp(line_number) abort
    let cursor_position = getpos('.')
    let swap_line = a:line_number
    execute 'normal! dd' . swap_line . 'kVp'
    call setpos('.', cursor_position)
    execute 'normal!  P'
endfunction

function! SwapLineDown(line_number) abort
    let cursor_position = getpos('.')
    let swap_line = a:line_number
    execute 'normal! dd' . swap_line . 'jkVp'
    call setpos('.', cursor_position)
    execute 'normal!  P'
endfunction

for position in range(1, 35)
    execute 'nnoremap <Leader>dk' . position . ' :call DeleteLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>dj' . position . ' :call DeleteLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>k' . position . ' :call MoveLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>j' . position . ' :call MoveLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>pk' . position . ' :call ReplaceCurrentLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>pj' . position . ' :call ReplaceCurrentLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>rk' . position . ' :call ReplaceLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>rj' . position . ' :call ReplaceLineDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>mk' . position . ' :call MoveLineAndCursorUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>mj' . position . ' :call MoveLineAndCursorDown(' . position . ')<CR>'
    execute 'nnoremap <Leader>sk' . position . ' :call SwapLineUp(' . position . ')<CR>'
    execute 'nnoremap <Leader>sj' . position . ' :call SwapLineDown(' . position . ')<CR>'
endfor
