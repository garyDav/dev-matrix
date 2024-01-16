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
# Actualizar SO Linux
sudo do-release-upgrade -d

# Ajustar Brillo PC-Desktop
lxqt-config

# Problemas de dependencias
sudo apt-get check
sudo apt-get -f install
sudo apt-get install --reinstall build-essential

# Agregar un grupo propietario al usuario
sudo usermod -aG docker $USER
id -Gn $USER
sudo chmod 666 /var/run/docker.sock # En caso de Error

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
## EN DEBIAN 11
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
sudo apt update
sudo apt install fish

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
nvm use v12.9.1 # En caso de instalar esta versión
set --universal nvm_default_version v16.19.1 # Vesion para Instalar todo NVIM

# Instalar NVIM (v0.5.1):
sudo apt-get install ninja-build gettext cmake unzip curl
## Build: https://github.com/neovim/neovim/wiki/Building-Neovim
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install # Default install location is /usr/local/bin/nvim

## Antes NVIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
##Para VERSIONES > v0.5.0 // https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source

# Install Packer for NVIM
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

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
sudo apt-get -y install python3-pip
pip3 --version
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
wget https://go.dev/dl/go1.20.3.linux-amd64.tar.gz
sudo tar -xvf go1.20.3.linux-amd64.tar.gz
sudo mv go /usr/local
fish_add_path /usr/local/go/bin
go version
sudo rm -R go1.20.2.linux-amd64.tar.gz

# Instalar GHQ:
## Directo con GO
go install github.com/x-motemen/ghq@latest
## build
git clone https://github.com/x-motemen/ghq .ghq
cd .ghq
sudo apt install make
make install
cd ~/go/bin/
chmod +x ghq
sudo mv ghq /usr/local/bin/
cd
rm -R .ghq

# Instalar PECO:
sudo apt install peco

# Install lua-language-server: https://github.com/LuaLS/lua-language-server/wiki/Getting-Started#command-line
# Versiones https://github.com/LuaLS/lua-language-server/releases/tag/3.7.4
git clone https://github.com/LuaLS/lua-language-server
cd lua-language-server
./make.sh
./bin/lua-language-server
# En caso de error
sudo apt install ninja-build
sudo mv lua-language-server /usr/local/bin/
fish_add_path /usr/local/bin/

# Configuracion NVIM
sudo apt-get install unzip
unzip file.zip



# Descargar archivos de configuración de FISH, NVIM, TMUX
# https://github.com/craftzdog/dotfiles-public
cd coder/conf/
git clone https://github.com/craftzdog/dotfiles-public.git
# Una vez copiado los archivos de configucación
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

## CONFIG dotfiles configuration NVIM
https://github.com/sumneko/lua-language-server/wiki/Getting-Started#linuxmacos
npm install -g yarn
yarn add global tree-sitter
yarn add global tree-sitter-cli
yarn add global neovim
yarn add global diagnostic-languageserver

:PackerInstall
:LspInfo
:MasonInstall eslint_d

## En caso de error
https://launchpad.net/ubuntu/+source/tree-sitter
https://github.com/williamboman/nvim-lsp-installer#setup
:TSUpdate
:LspInstallInfo
:checkhealth nvim_treesitter
:checkhealth provider
pip3 install tree-sitter


npm install -g @fsouza/prettierd


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

