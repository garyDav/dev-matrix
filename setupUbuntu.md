### Version de Linux
lsb_release -a

### Problemas de dependencias
sudo apt-get check
sudo apt-get -f install

### Install NVIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally
sudo mv squashfs-root / && sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim

### VIM-PLUG Neovim (Unix, Linux)
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


### Instalar FISH SHELL
https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+packages

sudo apt install fish
chsh -s /usr/bin/fish

### Instalar FISHER
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install jorgebucaran/nvm.fish
nvm list-remote
nvm install v12.22.6
node -v
npm -v


### Comandos varios
sudo apt upgrade                                                                                                                                               
sudo nano /etc/shells                                                                                                                                          
which fish                                                                                                                                                     
passwd gary.2810.dav                                                                                                                                           
chsh -s /usr/bin/fish                                                                                                                                          
sudo chsh -s /usr/bin/fish                                                                                                                                     
fisher theme                                                                                                                                                   
sudo apt-get install fonts-powerline                                                                                                                           
sudo apt install fonts-firacode                                                                                                                                
1                                                                                                                                                              
cd                                                                                                                                                             
sudo apt-add-repository ppa:fish-shell/release-3                                                                                                               
sudo apt-get update                                                                                                                                            
sudo apt-get install fish                                                                                                                                      
fish -v                                                                                                                                                        
fisher install IlanCosman/tide@v5                                                                                                                              
fisher remove IlanCosman/tide@v5                                                                                                                               
fisher update jorgebucaran/fisher                                                                                                                              
fisher -v                                                                                                                                                      
echo $SHELL                                                                                                                                                    
fish                                                                                                                                                           
history                                                                                                                                                        
fisher install shellder                                                                                                                                        
fc-list                                                                                                                                                        
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install simnalamburt/shellder                                                                                                                           
fisher install jethrokuan/z                                                                                                                                    
sudo apt install peco                                                                                                                                          
fisher install oh-my-fish/plugin-peco                                                                                                                          
abbr -a history peco_select_history                                                                                                                            
curl -L https://get.oh-my.fish | fish                                                                                                                          
omf install simnalamburt/shellder                                                                                                                              
omf install shellder                                                                                                                                           
exit                                                                                                                                                           
omf                                                                                                                                                            
exec fish --init-command "set -g fish_greeting; emit _tide_init_install"                                                                                       
command cp -R $_tide_tmp_dir/tide-HEAD/{completions,conf.d,functions} $__fish_config_dir                                                                       
curl https://codeload.github.com/ilancosman/tide/tar.gz/HEAD | tar -xzC $_tide_tmp_dir                                                                         
set -l _tide_tmp_dir (command mktemp -d)                                                                                                                       
ls

fisher -v 
fc-list
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install simnalamburt/shellder
fisher install jethrokuan/z 
sudo apt install peco
fisher install oh-my-fish/plugin-peco
abbr -a history peco_select_history
curl -L https://get.oh-my.fish | fish
# SHELLDER
—-
set -l _tide_tmp_dir (command mktemp -d)                                                                                      gary.2810.dav@server-gary
        curl https://codeload.github.com/ilancosman/tide/tar.gz/HEAD | tar -xzC $_tide_tmp_dir
        command cp -R $_tide_tmp_dir/tide-HEAD/{completions,conf.d,functions} $__fish_config_dir
        exec fish --init-command "set -g fish_greeting; emit _tide_init_install"
—-

Nerd fonts:
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

sudo apt install fonts-firacode

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

Install EXA:
wget https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip 
unzip exa-linux-x86_64-v0.10.0.zip
cd bin/
cp exa /usr/local/bin/ 
rm -R bin/
rm -R completions/
rm -R man/
rm exa-linux-x86_64-v0.10.0.zip
abbr -a ll exa --long --header --git

Install GO:
sudo wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

Install GHQ:
git clone https://github.com/x-motemen/ghq .ghq
cd .ghq
make install
sudo apt install make
cd ~/go/bin/
sudo cp ghq /usr/local/bin/
chmod +x ghq
cd
sudo rm -R go
rm go1.15.5.linux-amd64.tar.gz

fish_add_path /usr/local/go/bin

fisher install jorgebucaran/nvm.fish
nvm list-remote
nvm install v12.22.6
node -v
npm -v

mv nvim.appimage nvim
chmod +x nvim
sudo mv nvim /usr/local/bin/

Plug install:
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \                           gary.2810.dav@server-gary
               https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

npm install -g tree-sitter tree-sitter-cli
sudo apt install luajit
sudo ln -s /usr/local/bin/nvim /usr/local/bin/v

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

Install Fisher:
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

set -l _tide_tmp_dir (command mktemp -d)
curl https://codeload.github.com/ilancosman/tide/tar.gz/HEAD | tar -xzC $_tide_tmp_dir
command cp -R $_tide_tmp_dir/tide-HEAD/{completions,conf.d,functions} $__fish_config_dir
exec fish --init-command "set -g fish_greeting; emit _tide_init_install"

sudo apt-get update
sudo apt-get install --reinstall build-essential

npm install -g tree-sitter-cli

/usr/local/bin/ide
#!/bin/bash
tmux split-window -v -p 30
tmux split-window -h -p 50

ssh-keygen -t rsa -b 4096 -C "This is a key"


set --universal nvm_default_version v12.9.1

