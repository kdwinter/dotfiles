#!/usr/bin/zsh

. ~/.zsh/alias
. ~/.zsh/function
. ~/.zsh/style
. ~/.zsh/opts
#. ~/.zsh/alias
. ~/.zsh/prompt

if [ "$TERM" = "linux" ]; then
  echo -en "\e]P0000000" #black
  echo -en "\e]P8505354" #darkgrey
  echo -en "\e]P1f92672" #darkred
  echo -en "\e]P9ff5995" #red
  echo -en "\e]P282b414" #darkgreen
  echo -en "\e]PAb6e354" #green
  echo -en "\e]P3fd971f" #brown
  echo -en "\e]PBfeed6c" #yellow
  echo -en "\e]P456c2d6" #darkblue
  echo -en "\e]PC8cedff" #blue
  echo -en "\e]P58c54fe" #darkmagenta
  echo -en "\e]PD9e6ffe" #magenta
  echo -en "\e]P6465457" #darkcyan
  echo -en "\e]PE899ca1" #cyan
  echo -en "\e]P7ccccc6" #lightgrey
  echo -en "\e]PFf8f8f2" #white
  clear # back to default input colours
fi

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. ~/.zsh/ssh-agent-plugin.zsh

eval "$(rbenv init -)"
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export DEFAULT_GEM_HOME=$GEM_HOME

precmd() {
  if [[ -f .ruby-version ]]; then
    local gem_home_version=$(echo $GEM_HOME | grep -oE '[^/]+$' | sed 's/..$//')
    local ruby_version=$(ruby -v | sed 's/.*ruby \?[a-zA-Z0-9]* \([0-9.]*\).*/\1/' | sed 's/..$//')
    if [[ gem_home_version -ne ruby_version ]]; then
      export GEM_HOME=$(ruby -e 'print Gem.user_dir')
    fi
  else
    export GEM_HOME=$DEFAULT_GEM_HOME
  fi
}
