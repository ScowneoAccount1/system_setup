# system_setup
note: while nvim config is in the ~/.config directory, that tmux file is just in root. so it should be ~/.tmux.conf

## install nvim with:

```sudo apt-get install neovim``` [debian only, not ubuntu, i think]

```git clone https://github.com/ScowneoAccount1/system_setup/tree/main/nvim ~/.config/nvim```


## install tmux'with:
```sudo apt-get install tmux```

```git clone https://github.com/ScowneoAccount1/system_setup/blob/main/.tmux.conf ~/``` [automatically copies the config]

```git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm``` [installs tpm]

```source-file ~/.tmux.conf``` [i think]

```tmux``` <leader> I


## fonts
you can just download the zip for "JetBrainsMono NF" file from here with

```git clone https://github.com/ScowneoAccount1/system_setup/blob/main/JetBrainsMonoNF.tar.gz ~/Downloads/```
(or alternatively here, but takes x5 memory)[https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip]

```sudo cp -r ~/Downloads/JetBrainsMonoNF/ /usr/share/fonts/```

for regular "JetBrains Mono" just run

```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"```

```fc-cache```


## oh-my-zsh's theme:
```sudo apt-get install zsh```

```sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"```

here's the theme btw\n
```bash
PROMPT=$'%{$BG[162]$fg[white]%}  %n %{$bg_bold[magenta]$fg[magenta]%}%{$FG[162]%}%{$bg_bold[magenta]$fg[white]%} %D{%X} %{$reset_color%}%{$BG[056]$fg[magenta]%}%{$BG[019]$FG[063]%}%{$BG[056]$fg[white]%} %~ %{$reset_color%}%{$FG[056]%}%{$FG[019]%}%{$reset_color%}
%{$reset_color%}%{$fg[white]%}δ%{$fg_bold[magenta]%}:%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
```
