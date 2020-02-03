# vim-line-motion

Vim-line-motion allows the user to perform line-wise operations to move,
delete, yank and paste lines.  The idea originated from <a
href="https://www.youtube.com/watch?v=lwD8G1P52Sk">Chris Toomey's talk</a>
on writing Vim plugins and grew from there.

## Installation

Can be installed with Vim's built-in plugin support:  

```sh
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/aymenhafeez/vim-line-motion
```

## Commands:
* `<Leader>k + n` - move the current line 'n' lines up while maintaining
  the current cursor position.
* `<Leader>j + n` - move the current line 'n' lines down while maintaining
  the current cursor position.
* `<Leader>dk + n` - delete the line 'n' lines above the current position.
* `<Leader>dj + n` - delete the line 'n' lines below the current position.
* `<Leader>mk + n` - move the current line and cursor 'n' lines up.
* `<Leader>mj + n` - move the current line and cursor 'n' lines down.
* `<Leader>rk + n` - replace the line 'n' lines above with the current
  line.
* `<Leader>rj + n` - replace the line 'n' lines below with the current
  line.
* `<Leader>pk + n` - replace the current line with the line 'n' lines
above.
* `<Leader>pj + n` - replace the current line with the line 'n' lines
below.
* `<Leader>sk + n` - swap the current line and the line 'n' lines above.
* `<Leader>sj + n` - swap the current line and the line 'n' lines down.
