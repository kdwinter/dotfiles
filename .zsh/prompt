#!/bin/zsh

case $TERM in
  *xterm*|rxvt|rxvt-unicode|rxvt-256color|(dt|k|E)term)
    precmd () { print -Pn "\e]0;%n %# %~\a" }
    preexec () { print -Pn "\e]0;%n %# %~ ($1)\a" }
  ;;
  screen)
    precmd () {
      print -Pn "\e]83;title \"$1\"\a"
      print -Pn "\e]0;$TERM - (%L) [%n]%# [%~]\a"
    }
    preexec () {
      print -Pn "\e]83;title \"$1\"\a"
      print -Pn "\e]0;$TERM - (%L) [%n]%# [%~] ($1)\a"
    }
  ;;
esac

setprompt () {
  autoload -U colors zsh/terminfo
  colors
  setopt prompt_subst
  PR_NO_COLOR="%{$terminfo[sgr0]%}"
  for color in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
  done

  #PROMPT=$'${PR_LIGHT_BLACK}[${PR_LIGHT_YELLOW}%n${PR_LIGHT_BLACK}][${PR_LIGHT_RED}%~${PR_LIGHT_BLACK}] %#${PR_NO_COLOR} '
  #RPROMPT=$'${PR_LIGHT_GREEN}%~${PR_NO_COLOR}'
  #PROMPT=$'${PR_LIGHT_YELLOW}%n${PR_LIGHT_CYAN}@${PR_LIGHT_GREEN}%m${PR_LIGHT_WHITE}:${PR_LIGHT_RED}%#${PR_LIGHT_CYAN}->${PR_LIGHT_YELLOW}%~${PR_LIGHT_WHITE} (${PR_LIGHT_GREEN}%?${PR_LIGHT_CYAN})
#> ${PR_NO_COLOR}'
  PROMPT=$'[${PR_LIGHT_GREEN}%n${PR_NO_COLOR}][${PR_LIGHT_CYAN}%~${PR_NO_COLOR}] ${PR_LIGHT_GREEN}>>${PR_NO_COLOR} '
}

if [ -n "$TERM" ]; then
  setprompt
fi
