# info

# https://wiki.archlinux.org/index.php/Docker

# docker group
[ $(groups | grep -q docker) ] || sudo usermod -a -G docker $USER

# make some dev resources
[ ! -d $HOME/src ] && mkdir -p $HOME/src

# install pyenv
[ ! -d $HOME/.pyenv ] && curl https://pyenv.run | bash

# configure git cred helper
sudo pacman -S libgnome-keyring
cd /usr/share/git/credential/gnome-keyring
sudo make
cd -
git config --global credential.helper /usr/share/git/credential/gnome-keyring/git-credential-gnome-keyring

# install tfenv
[ ! -d $HOME/.tfenv ] && git clone https://github.com/tfutils/tfenv.git ~/.tfenv 

# disable the pc speaker
# info: https://wiki.archlinux.org/index.php/PC_speaker#Globally
sudo rmmod pcspkr
# remove on future reboots
# echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf

# dont forget to restart!!
# sudo shutdown -r now
