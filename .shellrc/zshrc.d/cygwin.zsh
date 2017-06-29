# Cygwin

if [ `/usr/bin/uname $UNAME_OPT` = Cygwin ]
then

  if [ -e $HOME/.shellrc/rc.d/chef_aliases.sh ]
  then
    source $HOME/.shellrc/rc.d/chef_aliases.sh
  fi

fi
