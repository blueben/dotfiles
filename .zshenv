##
# Ben's .zshenv

##
# User configuration

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt extendedglob

# Shell PATH Exports
 
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin" # Treat me like an admin

# Consult

export CONSUL_URL="http://esb-consul-prod.esb.vip.nordstrom.com:8500"

# Go

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Mac OS X

if [ `/usr/bin/uname $UNAME_OPT` = Darwin ]
then
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"                      # MacPorts PATH
  export MANPATH="/opt/local/share/man:/usr/local/man:$MANPATH"
  export JAVA_HOME=$(/usr/libexec/java_home)

  # Tell ls to be colourful
  export CLICOLOR=1
  export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
  # Tell grep to highlight matches
  export GREP_OPTIONS='--color=auto'
fi

# Windows Cygwin env

if [ `/usr/bin/uname $UNAME_OPT` = Cygwin ]
then
  export PATH="$PATH:/c/Users/$USER/Portable"

  if [ -d "/c/opscode/chefdk/embedded/bin" ]
  then
    export PATH="$PATH:/c/opscode/chefdk/embedded/bin"
  fi

fi


# chruby

if [ -e "/usr/local/share/chruby/chruby.sh" ]
then
  source /usr/local/share/chruby/chruby.sh
fi

if [ -e "$HOME/.dircolor" ]
then
  source $HOME/.dircolor
fi

# Local Timezone

export TZ="/usr/share/zoneinfo/PST8PDT"

# Preferences

export EDITOR="vim"
