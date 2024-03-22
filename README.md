# system_setup
note: while nvim config is in the ~/.config directory, that tmux file is just in root. so it should be ~/.tmux.conf

##install nvim with:\n
```sudo apt-get install neovim``` [debian only, not ubuntu, i think]\n
```git clone https://github.com/ScowneoAccount1/system_setup/tree/main/nvim ~/.config/nvim```\n

##install tmux'with:
```sudo apt-get install tmux```\n
```git clone https://github.com/ScowneoAccount1/system_setup/blob/main/.tmux.conf ~/``` [automatically copies the config]\n
```git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm``` [installs tpm]\n
```source-file ~/.tmux.conf``` [i think]\n
```tmux``` <leader> I\n

##fonts
(link for "JetBrainsMono NF")[https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip]\n
```sudo cp -r ~/Downloads/JetBrainsMonoNF/ /usr/share/fonts```\n
for regular "JetBrains Mono" just run\n
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"```\n
```fc-cache```\n

##oh-my-zsh's theme:
```sudo apt-get install zsh```\n
```sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"```\n
here's the theme btw\n
```bash
PROMPT=$'%{$BG[162]$fg[white]%}  %n %{$bg_bold[magenta]$fg[magenta]%}%{$FG[162]%}%{$bg_bold[magenta]$fg[white]%} %D{%X} %{$reset_color%}%{$BG[056]$fg[magenta]%}%{$BG[019]$FG[063]%}%{$BG[056]$fg[white]%} %~ %{$reset_color%}%{$FG[056]%}%{$FG[019]%}%{$reset_color%}
%{$reset_color%}%{$fg[white]%}δ%{$fg_bold[magenta]%}:%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
```
