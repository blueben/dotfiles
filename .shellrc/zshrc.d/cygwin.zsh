# Cygwin

if [ `/usr/bin/uname -o` = Cygwin ]
then

  if [ -e $HOME/.shellrc/rc.d/chef_aliases.sh ]
  then
    source $HOME/.shellrc/rc.d/chef_aliases.sh
  fi

fi
