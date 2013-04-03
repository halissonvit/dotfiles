cd ~
mkdir tmp
cd tmp

echo # Writting an apt config file
sudo sh -c 'echo "APT {\nGet {\nAssume-Yes \"true\";\nFix-Broken \"true\";\n};\n};" > /etc/apt/apt.conf'

echo # Showing name on Status Bar
gsettings set com.canonical.indicator.session show-real-name-on-panel true

echo # Show Battery percentage
sudo add-apt-repository ppa:noobslab/initialtesting
sudo apt-get update
sudo apt-get install indicator-power

echo # HW temperature
sudo apt-get install lm-sensors hddtemp psensor

echo # Flash Plugin
sudo apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get install flashplugin-installer

echo # Compression Decompression Tools
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack lha arj cabextract file-roller

echo # Updating ubuntu
sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get dist-upgrade && sudo apt-get -y autoclean && sudo apt-get -y autoremove

echo # Installing Essential Softwares
sudo apt-get install ubuntu-restricted-extras
sudo wget --output-document=/etc/apt/sources.list.d/medibuntu.list http://www.medibuntu.org/sources.list.d/$(lsb_release -cs).list && sudo apt-get --quiet update && sudo apt-get --yes --quiet --allow-unauthenticated install medibuntu-keyring && sudo apt-get --quiet update
sudo apt-get install libdvdcss
sudo apt-get install vim
sudo apt-get install terminator
sudo apt-get install curl
sudo apt-get install xclip
sudo apt-get install autojump

echo #Dropbox
wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_1.4.0_amd64.deb"
sudo dpkg -i **dropbox**.deb

echo #Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i **google-chrome*.deb
sudo apt-get -f install

echo #TeamViewer

echo #CPU Memory Indicator Applet
sudo add-apt-repository ppa:indicator-multiload/stable-daily
sudo apt-get update
sudo apt-get install indicator-multiload

echo #Nautilus
sudo add-apt-repository ppa:gnome3-team/gnome3 && sudo apt-get update && sudo apt-get dist-upgrade && killall nautilus

#Steam
#sudo apt-get install steam

echo # Java
sudo add-apt-repository ppa:webupd8team/java && sudo apt-get update && sudo apt-get install oracle-jdk7-installer -y

echo # JDownload
sudo add-apt-repository ppa:jd-team/jdownloader && sudo apt-get update && sudo apt-get install jdownloader -y

echo # Other util softwares
sudo apt-get install vlc deluge bleachbit xchat trimage filezilla -y

echo # Installing VCS
sudo apt-get install git
sudo apt-get install subversion

echo # Installing Ruby Env
sudo apt-get install build-essential bison openssl libreadline5 libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libmysqlclient-dev libxslt-dev autoconf libc6-dev ncurses-dev libtool libyaml-dev libcurl4-openssl-dev libpcre3 libpcre3-dev libgdbm-dev  libffi-dev
echo # RVM
curl -L https://get.rvm.io | bash -s stable --rails


echo # Databases
sudo apt-get install mysql-client mysql-server
sudo apt-get install postgresql pgadmin3
sudo apt-get install redis-server


echo # Zsh
sudo apt-get install zsh
chsh -s `which zsh`
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh


echo # Installing Janus
curl -Lo- https://bit.ly/janus-bootstrap | bash

echo # Installing Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo # Installing vim-colors-solarized
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/

echo # Downloading dotfiles
git clone git@github.com:halissonvit/dotfiles.git ~/dotfiles
echo # Symlinking config files
ln -s ~/dotfiles/.** ~/
