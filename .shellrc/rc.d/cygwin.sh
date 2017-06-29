# Cygwin

if [ `/usr/bin/uname $UNAME_OPT` = Cygwin ]
then

  if [ -e $HOME/.shellrc/rc.d/chef.aliases ]
  then
    source $HOME/.shellrc/rc.d/chef.aliases
  fi

fi
