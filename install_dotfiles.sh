cd "$HOME"
dotfiles="$HOME/dotfiles"
# Vim Configuration
ln -sf $dotfiles/vim/vimrc .vimrc
ln -sf $dotfiles/vim/vim .vim

# Bash
ln -sf $dotfiles/bash/bashrc .bashrc
ln -sf $dotfiles/bash/bash_profile .bash_profile

# Custom scripts
ln -sf $dotfiles/scripts .scripts

# .profile
ln -sf $dotfiles/profile .profile

# i3 configuration
ln -sf $dotfiles/i3 .config/i3
ln -sf $dotfiles/i3blocks .config/i3blocks

# conky configuration
ln -sf $dotfiles/conky .conky

# Rofi menu
ln -sf $dotfiles/rofi .config/rofi

# .Xresources
ln -sf $dotfiles/Xresources .Xresources
xrdb .Xresources

# urxvt
ln -sf $dotfiles/urxvt .urxvt

# gtk theming
ln -sf $dotfiles/gtk/gtk-3.0 .config/gtk-3.0
ln -sf $dotfiles/gtk/gtk-2.0 .config/gtk-2.0

# mpv
ln -sf $dotfiles/mpv .config/mpv

# neofetch
ln -sf $dotfiles/neofetch .config/neofetch

# redshift
ln -sf $dotfiles/redshift .config/redshift

# youtube-dl
ln -sf $dotfiles/youtube-dl .config/youtube-dl

# MuseScore
ln -sf $dotfiles/musescore .config/MuseScore

# GNU DEBUGGER
ln -sf $dotfiles/gdbinit .gdbinit

# .xinitrc
ln -sf $dotfiles/xinitrc .xinitrc
