# system_setup
install nvim with:

`sudo apt-get install neovim` [debian only, not ubuntu, i think]

install tmux's plugins with:

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

oh-my-zsh's theme:
```bash
PROMPT=$'%{$BG[162]$fg[white]%}  %n %{$bg_bold[magenta]$fg[magenta]%}%{$FG[162]%}%{$bg_bold[magenta]$fg[white]%} %D{%X} %{$reset_color%}%{$BG[056]$fg[magenta]%}%{$BG[019]$FG[063]%}%{$BG[056]$fg[white]%} %~ %{$reset_color%}%{$FG[056]%}%{$FG[019]%}%{$reset_color%}
%{$reset_color%}%{$fg[white]%}δ%{$fg_bold[magenta]%}:%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
```
