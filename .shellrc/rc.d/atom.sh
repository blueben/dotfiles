# Atom.io configuration

if [ `/usr/bin/uname $UNAME_OPT` = Msys ] || [ `/usr/bin/uname $UNAME_OPT` = Cygwin ]
then

  export PATH="$PATH:$HOME/AppData/Local/atom/bin"
  alias atom='atom.cmd'

fi
