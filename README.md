# vim-line-motion

This plugin is a very simple, work-in-progress script of functions, which allow
the user to perform line-wise operations to move, delete, yank and paste lines.
The idea originated from <a href="https://www.youtube.com/watch?v=lwD8G1P52Sk">Chris Toomey's
talk</a> on writing Vim plugins and grew from there.

## Installation

Can be installed with Vim's built-in plugin support:  

    mkdir -p ~/.vim/pack/plugins/start
    cd ~/.vim/pack/plugins/start
    git clone https://github.com/aymenhafeez/vim-line-motion

## Commands:
* `<Leader>dk + <n>` - delete the line 'n' lines above the current position.
* `<Leader>dj + <n>` - delete the line 'n' lines below the current position.
* `<Leader>k + <n>` - move the current line 'n' lines up while maintaining the
current cursor position.
* `<Leader>j + <n>` - move the current line 'n' lines down while maintaining the
current cursor position.
* `<Leader>mk + <n>` - move the current line and cursor 'n' lines up.
* `<Leader>mj + <n>` - move the current line and cursor 'n' lines down.
* `<Leader>pl + <line_n>` - yank the specified line and paste it in
place of the current line.
* `<Leader>rk + <n>` - replace the line 'n' lines above with the current line.
* `<Leader>rj + <n>` - replace the line 'n' lines below with the current line.

