sudo pacman -S --needed \
       bspwm \
       chromium \
       clipmenu \
       compton \
       compton-conf \
       cool-retro-term \
       emacs \
       feh \
       figlet \
       fortune-mod \
       geckodriver \
       gnome-screenshot \
       gnome-terminal \
       i3-gaps \
       i3exit \
       i3lock \
       jq \
       kitty \
       kitty \
       konsole \
       libgnome-keyring \
       morc_menu \
       neovim \
       nodejs \
       npm \
       openldap \
       pamixer \
       polybar \
       py3status \
       qterminal \
       rofi \
       ruby \
       rxvt-unicode \
       termdown \
       terminator \
       tilix \
       ttf-dejavu-sans-mono-powerline \
       urxvt-perls \
       vault \
       variety \
       wmctrl \
       xboomx \
       xclip \
       xclip \
       xorg-xbacklight \
       xorg-xfontsel gtk2fontsel \
       xorg-xwininfo


[ -d $HOME/src/yay ] || git clone https://aur.archlinux.org/yay.git $HOME/src/yay
[ -d $HOME/src/yay ] && cd $HOME/src/yay && makepkg -si

[ $(command -v yay) ] && yay -S --needed \
                             apachedirectorystudio \
                             nvm \
                             rbenv
