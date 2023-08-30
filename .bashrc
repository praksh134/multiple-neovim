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
