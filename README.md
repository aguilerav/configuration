# Repositorio de configuracion

Repositorio con mis configuraciones para terminales y editores de texto

Trabajo en Linux en windows igualmente. La configuración de Windows son pasos
iniciales para poder usar linux

## Pasos previos en Windows

### 1. Install WSL

Instalar WSL a travez del powershell

```
wsl --install
wsl --set-default-version 2
```

### 2. Instalar Linux

```
wsl --install -d Ubuntu
```

Se puede listar las opciones de distribuciones

```
wsl --list online
```

E instalar de la siguiente manera

```
wsl --install -d <distribution-name>
```

Iniciar la distribución con WSL y correr los siguientes comandos:

```
sudo apt-get update
sudo apt-get upgrade
```

## Pasos previos en MacOS

Correr el comando en la terminal y seguir las instrucciones

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


## Pasos generales en Linux/MacOS/WSL

### 3. Instalar Wezterm

Uso wezterm como terminal. Si estoy usando WSL, Wezterm se debe instalar en windows

- Windows: [Descargar e instalar](https://wezfurlong.org/wezterm/installation.html)

- macOS
```
brew install --cask wezterm
```
- Linux: [Instalación](https://wezfurlong.org/wezterm/install/linux.html)


### 4. Instalar la Nerd Font (Meslo-LG)

- Windows: 
1. [Descargar fuente](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip)
2. Extrar todo, seleccionar todos los archivos de fuentes, click derecho e instalar
3. En WSL antes de correr el comando de linux hay que instalar unzip y fontconfig

```
sudo apt install unzip fontconfig
```

- MacOS
```
brew install font-meslo-lg-nerd-font
```

-Linux
```
font_url='https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip'; font_name=${font_url##*/}; wget ${font_url} && unzip ${font_name} -d ~/.fonts && fc-cache -fv ;
```

Ahora se debe agregar el archivo .wezterm.lua y empezar a usar Wezterm

### 5. Instalar Zsh

-MacOS
```
brew install zsh zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete
```
-Linux
```
sudo apt install zsh
```
Configurar zsh como shell predeterminado
```
chsh -s $(which zsh)
```

Reiniciar o abrir y cerrar sesión. Si al abrir la terminal te solicita configurar, no es necesario hacerlo

### 5. Instalar OhMyZsh

```
NO_INTERACTIVE=true sh -c "$(curl -fsSL https://raw.githubusercontent.com/subtlepseudonym/oh-my-zsh/feature/install-noninteractive/tools/install.sh)"
```

### 6. Instalar powerlevel10k
-MacOS
```
brew install powerlevel10k
```
-Linux
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Setear `ZSH_THEME="powerlevel10k/powerlevel10k"` en `~/.zshrc`. Al reiniciar la terminal empezará la configuración de powerlevel10k.

Selecciones: Lean, Unicode, 8 colors, 24-hour format, Two lines, Dotted, Left, No frame, Black, Compact, Many icons, Concise, No, Verbose, Yes

### 7. Instalar plugins de ZSH

-ZSH-AUTOSUGGESTION: Se instala con
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
-ZSH-SYNTAX-HIGHLIGHTING
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
Se agregan como plugin en el archivo .zshrc
```
plugins=(plugin1 zsh-autosuggestions zsh-syntax-highlighting)
```

### 8. Instalar Anaconda
-Linux/WSL
```
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh
bash ~/Downloads/Anaconda3-2024.06-1-Linux-x86_64.sh
```

### 9. Instalar Neovim
- Linux/WSL
Descargar Neovim e instalar neovim (chequear [link](https://github.com/neovim/neovim/blob/master/INSTALL.md))
```
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.1/nvim-linux64.tar.gz

tar xzvf nvim-linux64.tar.gz

sudo mv nvim-linux64 /usr/local/

sudo ln -s /usr/local/nvim-linux64/bin/nvim /usr/local/bin/nvim

```
Instalar requerimientos
```
# build-essential
sudo apt install build-essential

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# download and install Node.js (you may need to restart the terminal)
nvm install 20

# verifies the right Node.js version is in the environment
node -v # should print `v20.17.0`

# verifies the right npm version is in the environment
npm -v # should print `10.8.2`

# Ripgrep
sudo apt-get install ripgrep

# Make
sudo apt-get install make

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

#lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

```
- MacOS
```
brew install neovim
brew install repgrip
brew install node
```

### 10. TMUX

Instalar con `sudo apt install tmux` y luego correr

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Ahora agregar el archivo .tmux.conf en ~/ luego hay que abrir tmux y hacer '<Ctrl>+a I' y se instalarán los plugins. Con eso esta listo tmux

### 11. Configurar Neovim

- Agregar la carpeta nvim en ~/.config/
- Abrir lazy con :Lazy
- Instalar plugins con "I"

### 12. Agregar aliases

En archivo .zshrc agregar
```
alias v='nvim'
alias pylab='ipython --matplotlib'
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl='tmux ls'
alias tk='tmux kill-session -t'
```
