# vim:ft=zsh ts=2 sw=2 sts=2

ROO="🦘"
LAMBDA="\u03bb"

PROMPT='%{$fg_bold[235]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
$(print $PROMPT_SYMBOL $ROO $LAMBDA)  '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[grey]%}git:%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_CHEF_PREFIX="%{$fg[blue]%}chef:"
ZSH_THEME_CHEF_SUFFIX="%{$reset_color%}"

#RPROMPT='%{$fg[green]%}%n@%m%{$reset_color%} ⌚ %{$fg_bold[red]%}%t%{$reset_color%}'

TMOUT=300

TRAPALRM() {
  zle reset-prompt
}
