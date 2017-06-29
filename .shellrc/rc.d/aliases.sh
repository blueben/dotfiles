alias vi='vim'
alias grep='grep --color=auto'

if [ $OS = Darwin ]
then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi
