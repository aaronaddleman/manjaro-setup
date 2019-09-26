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
       go-pie \
       i3-gaps \
       i3exit \
       i3lock \
       jq \
       keybase keybase-gui kbfs \
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
       shellcheck \
       termdown \
       terminator \
       tilix \
       ttf-dejavu-sans-mono-powerline \
       urxvt-perls \
       variety \
       vault \
       vifm \
       wmctrl \
       xboomx \
       xclip \
       xclip \
       xorg-xbacklight \
       xorg-xfontsel gtk2fontsel \
       xorg-xwininfo \
       yarn


[ -d $HOME/src/yay ] || git clone https://aur.archlinux.org/yay.git $HOME/src/yay
[ -d $HOME/src/yay ] && cd $HOME/src/yay && makepkg -si

[ $(command -v yay) ] && yay -S --needed \
                             apachedirectorystudio \
                             nvm \
                             nodejs-tern \
                             rbenv \
			                       terragrunt \
			                       ruby-build

[ -d $HOME/.tgenv ] || git clone https://github.com/cunymatthieu/tgenv ~/.tgenv

create_prlcc() {
	cat <<- EOF > /etc/X11/xinit/xinitrc.d/90-prlcc.sh
#!/usr/bin/env bash

[ -x /usr/bin/prlcc ] && /usr/bin/prlcc &
	
EOF
}

[ -d /usr/lib/parallels-tool ] && [ ! -f /etc/X11/xinit/xinitrc.d/90-prlcc.sh ] && create_prlcc && chmod +x /etc/X11/xinit/xinitrc.d/90-prlcc.sh

