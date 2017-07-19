alias vi='vim'
alias grep='grep --color=auto'

if [ `uname $UNAME_OPT` = Darwin ]
then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi
