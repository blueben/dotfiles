##
# .bashrc

source $HOME/.profile
source $HOME/.bash_ec2

##
# Shell Exports

export MANPATH=/opt/local/share/man:$MANPATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:~/bin:$EC2_HOME/bin

##
# Shell Aliases

alias cleardns='dscacheutil -flushcache'
alias cdchef='cd $HOME/Repo/seattlefenix-chef'

##
# RVM Jazz

[[ -s "/Users/benjamin/.rvm/scripts/rvm" ]] && source "/Users/benjamin/.rvm/scripts/rvm"  # This loads RVM into a shell session.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
