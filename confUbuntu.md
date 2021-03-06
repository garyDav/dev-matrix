### Primer paso:

* Actualizar SO: `sudo apt update && upgrade`
* Instalar Browser Brave
* Instalar kitty Terminal, desde Ubuntu Software
* Instalar Telegram Desktop
* Instalar GIT y copiar la llave publica a las configuraciones de GITHUB
>Con el comando: `ssh-keygen -t rsa -b 4096 -C "This is a key"` y `cat .ssh/id_rsa.pub`

### En Kitty Terminal:

```bash
# Version de Linux
lsb_release -a

# Problemas de dependencias
sudo apt-get check
sudo apt-get -f install
sudo apt-get install --reinstall build-essential

# Agregar un grupo propietario al usuario
sudo usermod -aG docker $USER
id -Gn $USER

# Eliminar packetes
sudo apt remove package
sudo apt purge package
sudo apt autoclean
sudo apt search package

# Primeros pasos para Termux
apt update
apt upgrade
apt install proot -y
apt install git -y
apt install nano -y
sudo nano /etc/hosts
## Add line
127.0.0.1       localhost
## Instalar UbuntuInTermux
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
apt install sudo
passwd root
## Agregar nuevo usuario
adduser gguzman
### Responder preguntas
usermod -aG sudo gguzman
### Si no agrega los permisos necesarios
nano /etc/sudoers
### Verificar la linea
gguzman ALL=(ALL:ALL) ALL

Cambiar de usuario
>su gguzman
>pwd
>sudo apt update
>sudo apt upgrade


# Instalar TMUX
sudo apt install tmux
# Ejecutar TMUX
tmux

# Instalar Fish Shell
# https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+packages
sudo apt install fish
sudo chsh -s /usr/bin/fish
chsh -s /usr/bin/fish
fish -v # fish, version 3.1.0
# Actualizar Fish Shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
fish -v # fish, version 3.3.1
fish #Cambiar de terminal a fish

# Instalar FISHER
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher update jorgebucaran/fisher
fisher -v # fisher, version 4.3.0

# Instalar TIDE (themplate fisher)
# https://github.com/IlanCosman/tide
# Recomendado de forma manual:
set -l _tide_tmp_dir (command mktemp -d)
curl https://codeload.github.com/ilancosman/tide/tar.gz/HEAD | tar -xzC $_tide_tmp_dir
command cp -R $_tide_tmp_dir/tide-HEAD/{completions,conf.d,functions} $__fish_config_dir
exec fish --init-command "set -g fish_greeting; emit _tide_init_install"

# Instalar fonts and icons:
# Nerd fonts:
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
sudo apt install fonts-firacode
# Cerrar y volver abrir kitty terminal

# Instalar NVM:
fisher install jorgebucaran/nvm.fish
nvm list-remote
nvm install v16.13.0
nvm use v12.9.1 # En caso de instalar esta versi??n
set --universal nvm_default_version v16.13.0

# Instalar NVIM (v0.5.1):
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim

# Instalar VIM-PLUG Neovim (Unix, Linux)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Instalar TreeSitter:
npm install -g tree-sitter tree-sitter-cli

###
# Si existe Error npm con python
# Instalar python3.7.4: https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04
npm config set python /usr/local/bin/python3.7
npm install -g neovim
pip3 install --user pynvim
pip3 install --user --upgrade pynvim

yarn global add tree-sitter tree-sitter-cli
yarn global add diagnostic-languageserver
# Edit: nvim ~/.config/fish/config.fish y agregar:
set -gx PATH /home/usrdonbosco/.yarn/bin $PATH
###


# Install Luajit:
sudo apt install luajit

# Instalar z for fish:
fisher install jethrokuan/z

# Instalar EXA:
wget https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip
unzip exa-linux-x86_64-v0.10.0.zip
cd bin/
sudo cp exa /usr/local/bin/
rm -R bin/
rm -R completions/
rm -R man/
rm exa-linux-x86_64-v0.10.0.zip
abbr -a ll exa --long --header --git # Opcional

# Instalar GO:
sudo wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.5.linux-amd64.tar.gz
fish_add_path /usr/local/go/bin
go version
sudo rm -R go
rm go1.15.5.linux-amd64.tar.gz

# Instalar GHQ:
git clone https://github.com/x-motemen/ghq .ghq
cd .ghq
make install
sudo apt install make
cd ~/go/bin/
sudo cp ghq /usr/local/bin/
chmod +x ghq
cd
rm -R .ghq

# Instalar PECO:
sudo apt install peco


# Descargar archivos de configuraci??n de FISH, NVIM, TMUX
# https://github.com/craftzdog/dotfiles-public
cd coder/conf/
git clone https://github.com/craftzdog/dotfiles-public.git
# Una vez copiado los archivos de configucaci??n
nvim
# >:PlugInstall

# Bug o errores en paquetes:
## MySQL Workbench
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service
sudo apt-get install gnome-keyring

## Bug defx requires Python3:
sudo apt install python3-pip
python3 -m pip install --user --upgrade pynvim
nvim # :checkhealth

## Bug: The given command "diagnostic-languageserver" is not executable.
npm i -g diagnostic-languageserver


# Install java16
sudo apt install openjdk-16-jre-headless
java -version

# nvim ~/.config/fish/config.fish
# NodeJS
set -gx PATH node_modules/.bin $PATH
# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# update config.fish
source ~/.config/fish/config.fish

# Instalar maven
# https://maven.apache.org/download.cgi

# Instalar markdown-preview
# https://github.com/iamcco/markdown-preview.nvim
```

