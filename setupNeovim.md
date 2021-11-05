## Setup definitivo de desarrollo

### Dotfiles
[Dotfiles Takuya](https://github.com/craftzdog/dotfiles-public)

### Ingredients

* __vim-plug__: A minimalist Vim plugin manager
* __nvim-lspconfig__: LSP configurations
* __nvim-treesitter__: Tresitter configurations
* __completion-nvim__: An LSP based auto completion
* __lspsaga.nvim__: A LSP user interface plugin
* __telescope.nvim__: A fuzzy finder over list
* __lualine.nvim__: A statusline written in Lua

### Directory structure

```zsh
$HOME/.config/
	|__nvim
	    |__init.vim			# Root config file
	    |__macos.vim		# macOS-specific config
	    |__maps.vim			# Keymaps
	    |__plug.vim			# Vim-plug config
	    |__after			# Post-init scripts
	    |	|__plugin/		# Plugin configs
	    |__colors/			# Color themes
```

### Update SO
#### MacOS
`brew update`

#### Ubuntu 20.04
```bash
sudo apt update
sudo apt upgrade -y
```

### Install NodeJS Ubuntu 20.04
```bash
git clone https://github.com/nvm-sh/nvm.git .nvm
cd ~/.nvm
git checkout v0.38.0
. ./nvm.sh
source ~/.bashrc
nvm list-remote
nvm install v12.22.5
nvm list

# Edit files: ~/.bashrc & ~/.profile & ~/.zshrc

export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# which: ~/.nvm/versions/node/v12.22.5/lib/node_modules
```

### Install Python3
sudo apt install python3
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
python --version


### Install the nightly Neovim
#### MacOS
brew install --HEAD tree-sitter luajit neovim
#### Ubuntu 20.04
npm install -g tree-sitter tree-sitter-cli
sudo apt install luajit
sudo apt install vim
sudo apt install neovim
which nvim
```bash
# Istalar PLUG nvim: Unix

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### Config vim and nvim
which nvim
sudo ln -s /usr/bin/nvim /usr/local/bin/v
which v
cd ~/.local/share/nvim/
ll
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
ll
cd site/autoload
cd ~/.config/
mkdir nvim && cd nvim
mkdir after colors && cd colors
v NeoSolarized.vim
```bash
# Edit NeoSolarized.vim
https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/colors/NeoSolarized.vim
```
cd ..
v init.vim
```bash
# Edit init.vim
https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/init.vim
```
v plug.vim
```bash
# Edit plug.vim
https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/plug.vim

:PlugInstall
# Test
cd ~/Proyectos/management-back/
v package.json
:Git blame
```
cd ~/.config/nvim/
```bash
# Edit macos.vim
https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/macos.vim

# Edit maps.vim
https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/maps.vim

# Create files ~/.config/nvim/after/plugin/
https://github.com/craftzdog/dotfiles-public/tree/master/.config/nvim/after/plugin
```

### Config other files
```bash
.gitconfig
https://github.com/craftzdog/dotfiles-public/blob/master/.gitconfig

.tmux.conf
https://github.com/craftzdog/dotfiles-public/blob/master/.tmux.conf

.tmux.conf.osx
https://github.com/craftzdog/dotfiles-public/blob/master/.tmux.conf.osx

.tmux.powerline.conf
https://github.com/craftzdog/dotfiles-public/blob/master/.tmux.powerline.conf
```

### Instalar Paquetes adicionales
#### Fish
sudo pacman -S fish
sudo apt install fish
brew install fish

fish

chsh -s $(which zsh)

### Fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install simnalamburt/shellder

fisher install IlanCosman/tide@v5

sudo pacman -S fonts-powerline

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

fisher install jethrokuan/z

sudo pacman -S exa

git clone https://github.com/x-motemen/ghq ~/ghq/github.com/x-motemen/ghq
cd ~/ghq/github.com/x-motemen/ghq/
make
go build
go install
ghq get --help

sudo pacman -S peco
sudo apt install peco

