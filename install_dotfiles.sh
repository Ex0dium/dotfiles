cd "$HOME"
dotfiles="$HOME/dotfiles"
cmd='ln -sfT'

# Vim Configuration
$cmd $dotfiles/vim/vimrc .vimrc
$cmd $dotfiles/vim/vim .vim

# Bash
$cmd $dotfiles/bash/bashrc .bashrc
$cmd $dotfiles/bash/bash_profile .bash_profile

# Custom scripts
$cmd $dotfiles/scripts .scripts

# .profile
$cmd $dotfiles/profile .profile

# i3 configuration
$cmd $dotfiles/i3 .config/i3
$cmd $dotfiles/i3blocks .config/i3blocks

# dunst
$cmd $dotfiles/dunst .config/dunst

# conky configuration
$cmd $dotfiles/conky .conky

# Rofi menu
$cmd $dotfiles/rofi .config/rofi

# .Xresources
$cmd $dotfiles/Xresources .Xresources
xrdb .Xresources

# urxvt
$cmd $dotfiles/urxvt .urxvt

# gtk theming
$cmd $dotfiles/gtk/gtk-3.0 .config/gtk-3.0
$cmd $dotfiles/gtk/gtk-2.0 .config/gtk-2.0

# mpv
$cmd $dotfiles/mpv .config/mpv

# neofetch
$cmd $dotfiles/neofetch .config/neofetch

# redshift
$cmd $dotfiles/redshift .config/redshift

# youtube-dl
$cmd $dotfiles/youtube-dl .config/youtube-dl

# MuseScore
$cmd $dotfiles/musescore .config/MuseScore

# GNU DEBUGGER
$cmd $dotfiles/gdbinit .gdbinit

# .xinitrc
$cmd $dotfiles/xinitrc .xinitrc
