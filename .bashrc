##
# Ben's .bashrc configuration loader


# .shellrc/bashrc.d

if [ -d $HOME/.shellrc/bashrc.d ]
then
  for file in $HOME/.shellrc/bashrc.d/*.sh
  do
    . $file
  done
fi

# Load all files from
# .shellrc/rc.d

if [ -d $HOME/.shellrc/rc.d ]
then
  for file in $HOME/.shellrc/rc.d/*.sh
  do
    . $file
  done
fi

# Load enabled site-specific configs from
# .shell/client.d

if [ -d $HOME/.shellrc/site.d ]
then
  for file in $HOME/.shellrc/site.d/*.active
  do
    . $file
  done
fi
