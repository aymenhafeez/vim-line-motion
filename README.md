# vim-line-motion

This is essentially a very simple, work-in-progress script of functions, which allow
the user to perform line-wise operations to move, delete, yank and paste lines.
The idea originated from <a href="https://www.youtube.com/watch?v=lwD8G1P52Sk">Chris Toomey's
talk</a> on writing Vim plugins and grew from there.

## Commands:
* `<Leader>dl + <n>` - delete the line 'n' lines above the current position.
* `<Leader>k + <n>` - move the current line 'n' lines up while maintaining the
current cursor position.
* `<Leader>j + <n>` - move the current line 'n' lines down while maintaining the
current cursor position.
* `<Leader>mk + <n>` - move the current line and cursor 'n' lines up.
* `<Leader>mj + <n>` - move the current line and cursor 'n' lines down.
* `<Leader>pl + <line_n>` - yank the specified line and paste it in
place of the current line.

## Installation

Can be installed with Vim's built-in plugin support:  

    mkdir -p ~/.vim/pack/plugins/start
    cd ~/.vim/pack/plugin/start
    git clone https://github.com/aymenhafeez/vim-line-flow

