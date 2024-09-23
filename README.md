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

## Pasos generales en Linux/MacOS/WSL

### 1. Instalar HomeBrew

Correr el comando en la terminal y seguir las instrucciones

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Instalar Wezterm

Uso wezterm como terminal. Si estoy usando WSL, Wezterm se debe instalar en windows

- Windows: [Descargar e instalar](https://wezfurlong.org/wezterm/installation.html)

- macOS/Linux
```
brew install --cask wezterm
```

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

### 5. Instalar Zsh

```
brew install zsh zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete
```

Al instalar con brew, se instala zsh en la carpeta de brew que no es permitida como directorio de shell, para permitirlo hay que hacer

```
which zsh
```
Y el directorio de resultado debe ser algo como home/linuxbrew/.linuxbrew/bin/zsh

Luego hay que hacer sudo nano /etc/shells y añadir la ruta que se obtuvo con which zsh al final del archivo (Ctrl+O para guardar, Ctrl+X para salir).

Finalmente cambiar el shell predeterminado
```
chsh -s $(which zsh)
```
Reiniciar.

### 5. Instalar OhMyZsh

```
NO_INTERACTIVE=true sh -c "$(curl -fsSL https://raw.githubusercontent.com/subtlepseudonym/oh-my-zsh/feature/install-noninteractive/tools/install.sh)"
```

### 6. Instalar powerlevel10k

```
brew install powerlevel10k
```




