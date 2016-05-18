##
# Ben's .zshrc configuration loader

# Ugly, but profile the runtime of this script.
start=`/usr/bin/date "+%s.%N"`

##
# Function loader

fpath=( $HOME/.shellrc/zfunc.d "${fpath[@]}" )

if [ -d $HOME/.shellrc/zfunc.d ]
then
  for file in $HOME/.shellrc/zfunc.d/*
  do
    func_name=$(basename $file)
    autoload -Uz $func_name
  done
fi

# Load all zsh configuration files from
# .shell/zshrc.d

if [ -d $HOME/.shellrc/zshrc.d ]
then
  for file in $HOME/.shellrc/zshrc.d/*.zsh
  do
    source_timed $file
  done
fi

# Load all files from
# .shell/rc.d

if [ -d $HOME/.shellrc/rc.d ]
then
  for file in $HOME/.shellrc/rc.d/*.sh
  do
    source_timed $file
  done
fi

# Load enabled site-specific configs from
# .shell/client.d

if [ -d $HOME/.shellrc/site.d ]
then
  for file in $HOME/.shellrc/site.d/*.active
  do
    source_timed $file
  done
fi

finish=`/usr/bin/date "+%s.%N"`
print "$(($finish-$start))\t~/.zshrc"
