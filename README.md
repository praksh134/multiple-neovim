# multiple-neovim
Adding multiple neovim like NVchad, LasyVim, AstroVim, etc.

### Note: This for only bash users

## Requirements
* Fuzzy Finder
  * To install Fuzzy finder
    ```
    sudo apt install fzf
    ```

* Neovim
  * To install neovim
    ```
    sudo apt install nvim 
    ```
### Note: your neovim are in the ~/.config/nvim file.
### This NVchad, LasyVim, Astrovim configuration files show in the in install command
* To install NVchad
  * ```
    git clone https://github.com/NvChad/NvChad ~/.config/NVchad 
    ```
* To install LasyVim
  * ```
    git clone https://github.com/LazyVim/starter ~/.config/Lasyvim
    ```

* To install AstroVim
  * ```
    git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/Astrovim
    ```
# Command in the terminal

* Open .bashrc file
  * ```
    nvim .bashrc
    ```
## Paste this codes in the .bashrc file
```bash
alias nvim-chad="NVIM_APPNAME=NVchad nvim"
alias nvim-astro="NVIM_APPNAME=Astrovim nvim"
alias nvim-lasy="NVIM_APPNAME=Lasyvim nvim"

function nvims() {
  items=("my neovim" "NVchad" "Astrovim" "Lasyvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config >>" --height=50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "my neovim" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bind -x '"\C-a": nvims'
```
### Now u can use the (nvims) command to use the multiple nvim
## To use multiple nvim  
```
nvims
```
