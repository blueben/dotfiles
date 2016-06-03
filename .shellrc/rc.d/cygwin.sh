# Cygwin

if [ `/usr/bin/uname -o` = Cygwin ]
then

  if [ -e $HOME/.shellrc/rc.d/chef.aliases ]
  then
    source $HOME/.shellrc/rc.d/chef.aliases
  fi

fi
