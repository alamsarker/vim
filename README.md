# tmux

1. Install tmux:

https://stackoverflow.com/questions/25940944/ugrade-tmux-from-1-8-to-1-9-on-ubuntu-14-04?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

2. Install tmux manager: https://github.com/tmux-plugins/tpm


# vim
Install vim: http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/

Add following commad in `.bashrc` or `.zshrc`

alias tmux='tmux -2'

# Ack

1. Install act.vim package via vundle
2. Install `sudo apt-get install ack`

Add .ackrc in project directory and add the exclude dir/files for search:
Example
--ignore-file=is:tags
--ignore-dir=storage
--ignore-dir=data 

# ctags
1. sudo `apt-get install ctags` (Debian/Ubuntu Linux), or brew install ctags (OS X).
2. In ~/.vimrc, add `set tags=tags`
3. Go to your project directory, and run ctags -R or may be `ctags -R --language=php .`
4. When editing, put your cursor over a variable, method or class and hit `Ctrl-]` to jump to its definition.

ref: https://robhoward.id.au/blog/2012/03/ctags-with-vim/
