# Dev Workflow by __Takuya__

## I use Fish shell

* User-friendly interactive shell
* Userful features out of the box
  * Syntax highlighting
  * Autosuggestions
  * Tab completions
  * etc.

## Why I don't use IDE?

* My personal __preference__
* __Don't have__ any big __problem__ which IDE would solve
* __Lazy__ to get used to an IDE
* Prefer staying on __terminal__

Let's __dive__ into __TERMINAL__

## My Fish setup

* __Fisher:__ Plugin manager for Fish
* __shellder:__ Shell theme
* __Nerd fonts:__ Powerline-patched font
  * SourceCode Pro
* __z:__ Directory jumping
* __peco:__ Iteractive filtering tool
  * `ctrl-r` to search the command history
  * `ctrl-f` to search the configured directories
* __Exa:__ A modern replacement for `ls`
* __ghq:__ Local Git repository organizer

## Install

### Fisher

* Plugin manager
* Installing a plugin
  * `fisher install <GH_REPOSITORY>`
* Example installing `z`
  * `fisher install jethrokuan/z`

### Shellder: Shell theme

* `fisher install simnalamburt/shellder`

### Nerd fonts

* Powershell-patched fonts

## Step by Step

```fish
# Iniciar tmux
tmux

# Abrir 4 terminales desde mi binario ide
ide

# Nombrar instancias split
^T q

# Movernos entre instancias de terminal (^ Ctrl Move around between tmux panes)
^T j
^T k
^T h
^T l

# Start a task runner (Grund & webpack)
npm|^W|rm ^L

# Cambiar de terminal y ejecutar npm
^T l|npm start

# Cambiar de terminal y abrir nvim
^T j
vim files

# Nvim abrir otra terminal con nvim (Split screen)
sv
sv

# Move screen
sh # Izquierda
sl # Derecha
sj # Arriba
sk # Abajo

# Ver carpetas y archivos
sf # Navigator
^D # Baja al ultimo elemento de la lista de navegación

# Open another tab
te
sf # Navigator

# Switch tab
|<-

# Movernos entre instancias
sh
^T j

# Split a current pane horizontally
ss
sf # Navigator
sl sl sh # Move
->| # Switch tabs

# Check the git status
g st

# Check the working diff
g d
^D # Saltos hacia abajo
^U # Saltos hacia arriba

# Rename tmux window
^T ,
^W # borrar lo seleccionado o la linea
# Escribes el nombre de tu tmux window

# Create new window
^T c
# x mobi ^W elimina la palabra 'mobi' ^W | z mobile
z docs # Desplazarse a un proyecto

# Dento de navigator
sf
/file # Busca archivos a partir del directorio actual

```


