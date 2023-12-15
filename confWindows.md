### Instalar Ubuntu for Windows

Abrir Windows PowerShell como administrador

```bash
wsl --install
# Rebooted (Reiniciar Windows)
# Buscar Ubuntu e ingresar, Si existe error:
# Panel de Control -> Apps -> Programas and Features -> Turn Windows features on or off
# Activar: Windows Subsystem for Linux
# Activar: Hyper-V -> Hyper-V Platform
# Volver abrir Powershell como administrador
wsl --update
wsl --set-default-version 1
wsl --list -o
wsl --install -d Ubuntu
# Una vez que inicializa Ubuntu te pedirá 'username' y 'password', introduces y listo.
```

### Instalar WSL 2

Abrir Activar o desactivar las características de Windows

```bash
# Activar: Plataforma de máquina virtual
# Subsistema de Windows para Linux
wsl --list
wsl --list --verbose # Saber si la distro usa WSL1 o WSL2
# Convertir WSL1 a WSL2
wsl --set-version Ubuntu 2
# Indicar que las distros utilicen WSL2
wsl --set-default-version 2
# WSL2 requiere una actualización de su componente de kernel
# Actualizar su componente Kernel: wsl_update_x64.msi
wsl # Entrar a la distribución predeterminada
wsl -d Debian # Para entrar a otra distro
# Aconsejable instalar Victor Mono NerdFonts
# Acceder a Linux desde Windows
\\wsl$\Ubuntu\home\ggary # \\wsl$\ Es el acceso a WSL2
# Referencia: https://terminaldelinux.com/terminal/wsl/instalacion-configuracion-wsl/

# Si existe un proceso que consume mucho RAM
# Crear un archivo en `c:\Users\<user>` con el nombre de `.wslconfig`
---
[wsl2]
memory=2048MB
swap=0
localhostForwarding=true
---
# Referencia para descargar la actualización del kernel: https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package

# Si existe un error de: Set-ExecutionPolicy unrestricted permission denied
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned -Force # Administrador

# Si existe un error de: PowerShell profile does not load
Set-ExecutionPolicy -ExecutionPolicy Unrestricted # Administrador
# crear: C:\Users\<myname>\Documents\WindowsPowerShell\profile.ps1
```

### Configurar como devaslife

Configurar terminal

```bash
# Abrir Windows PowerShell
# Click derecho nueva pestaña -> Settings -> Default terminal application: Cambiar a Windows Terminal -> Save
# Click en el pincel "Appearance" -> Activar: Show acrylic in tab row -> Save
# Cerrar terminal y volver Abrir
# Nueva pestaña - Flecha abajo -> Settings
# Click en icono Cuadraditos "Defaults" -> Appearance -> Color Scheme -> One Half Dark <-> también: Font face -> Hack NF o Firacode o la que prefieras de Nerd Fonts. Por último <-> Activar Acrylic "On" <-> Acrylic opacity 50%
# Desde Microsoft Store -> Instalar: PowerShell
# en Settings -> Default profile -> PowerShell -> Save
# en Settings -> Click en settings.json, buscar "one half dark", mas o menos linea 141, copiar y pegar todo el objeto, cambiar el name por "One Half Dark (modded)", cambiar el background a "#001B26", guardar archivo.
# en Settings -> "Defaults" -> Appearance -> Text "Color scheme" -> One Half Dark (modded) -> Save
```

### Install Scoop (Command line installer)

```bash
iwr -useb get.scoop.sh | iex # https://scoop.sh/
scoop install curl sudo jq
# Ejemplo: curl 'https://api.inkdrop.app' | jq .
```

### Desarrollar en Windows

```bash
# Instalar Git for Windows
winget install -e --id Git.Git

# Instalar Neovim
scoop install neovim gcc

# Make a user profile and set command aliases
mkdir .config/powershell
nvim .config/powershell/user_profile.ps1
---
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
---
nvim $PROFILE.CurrentUserCurrentHost
---
. $env:USERPROFILE\.config\powershell\user_profile.ps1
---
# Nota crear ese archivo user_profile.ps1 en esa ruta
ll | less

# Install Oh My Posh (Prompt theme engine)
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
vim user_profile.ps1
---
# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox

# Alias
...
---
```

# Copiar archivos de dotfiles
oh-my-posh --init --shell pwsh --config .\takuya.omp.json | Invoke-Expression

# Instalaciones

scoop install nvm

nvm install v20.10.0

Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Import-Module Terminal-Icons

Install-Module -Name z -Force

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -PredictionViewStyle ListView

scoop install fzf

Install-Module -Name PSFzf -Scope CurrentUser -Force

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Se cambia el Tema con

Set-PoshPrompt M365Princess o Set-PoshPrompt atomic o Set-PoshPrompt hunk

