# vim-bindsplit

## Installation

The plugin's files follow the standard layout for vim plugins.

- [vim-plug][1] `Plug 'jcorbin/vim-bindsplit'`
- [Vundle][2] `Bundle 'jcorbin/vim-bindsplit'`
- [NeoBundle][3] `NeoBundle 'jcorbin/vim-bindsplit'`
- [Pathogen][4] `git clone https://github.com/jcorbin/vim-bindsplit ~/.vim/bundle/vim-bindsplit`

## Usage

Simply run the command `:Bindsplit`.  If one split isn't enough, ask for more:
`:Bindsplit 4`.

## Configuration Example

If you need to do this a lot, you'll probably want a key binding for it:
```vim
nmap <leader>bs <Plug>BindsplitVsplit
```

[1]: https://github.com/junegunn/vim-plug
[2]: https://github.com/gmarik/vundle
[3]: https://github.com/Shougo/neobundle.vim
[4]: https://github.com/tpope/vim-pathogen
