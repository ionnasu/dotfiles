# Dotfiles
This is a dotfiles repository. [Stow](https://www.gnu.org/software/stow/) is used for symlinking.

## Setup
    $ git clone --recursive git@github.com:ionnasu/dotfiles.git ~/dotfiles
    $ cd ~/dotfiles
    $ for d in */; do stow "$d"; done
