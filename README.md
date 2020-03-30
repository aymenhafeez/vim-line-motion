# vim-line-motion

Vim-line-motion allows the user to perform line-wise operations to move,
delete, yank and paste lines.  The idea originated from <a
href="https://www.youtube.com/watch?v=lwD8G1P52Sk">Chris Toomey's talk</a>
on writing Vim plugins and grew from there.

## Installation

Install with your package manager of choice, or using Vim 8's native plugin
support:

```sh
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/aymenhafeez/vim-line-motion
```

## Commands:
* `<Leader>k[count]` - move the current line `[count]` lines up while maintaining
  the current cursor position.
* `<Leader>j[count]` - move the current line `[count]` lines down while maintaining
  the current cursor position.
* `<Leader>dk[count]` - delete the line `[count]` lines above the current position.
* `<Leader>dj[count]` - delete the line `[count]` lines below the current position.
* `<Leader>mk[count]` - move the current line and cursor `[count]` lines up.
* `<Leader>mj[count]` - move the current line and cursor `[count]` lines down.
* `<Leader>rk[count]` - replace the line `[count]` lines above with the current
  line.
* `<Leader>rj[count]` - replace the line `[count]` lines below with the current
  line.
* `<Leader>pk[count]` - replace the current line with the line `[count]` lines
above.
* `<Leader>pj[count]` - replace the current line with the line `[count]` lines
below.
* `<Leader>sk[count]` - swap the current line and the line `[count]` lines above.
* `<Leader>sj[count]` - swap the current line and the line `[count]` lines down.
