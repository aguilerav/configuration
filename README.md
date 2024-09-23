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
