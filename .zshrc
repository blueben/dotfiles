##
# Ben's .zshrc configuration loader

if [ -r $HOME/.shellrc/rc.d/get_os ]
then
  source $HOME/.shellrc/rc.d/get_os
fi

##
# Function loader

if [ -d $HOME/.shellrc/zfunc.d ]
then
  fpath=( $HOME/.shellrc/zfunc.d "${fpath[@]}" )
  for file in $HOME/.shellrc/zfunc.d/*
  do
    func_name=$(basename $file)
    autoload -Uz $func_name
  done
fi

# Load completions in 
# .shellrc/zcomp.d

if [[ -d $HOME/.shellrc/zcomp.d ]]
then
  fpath=( $HOME/.shellrc/zcomp.d "${fpath[@]}" )
  for file in $HOME/.shellrc/zcomp.d/*
  do
    autoload -U compinit
  done
fi

# Load all zsh configuration files from
# .shellrc/zshrc.d

if [ -d $HOME/.shellrc/zshrc.d ]
then
  for file in $HOME/.shellrc/zshrc.d/*.zsh
  do
    source $file
  done
fi

# Load all files from
# .shellrc/rc.d

if [ -d $HOME/.shellrc/rc.d ]
then
  for file in $HOME/.shellrc/rc.d/*.sh
  do
    source $file
  done
fi

# Load enabled site-specific configs from
# .shellrc/client.d

if [ -d $HOME/.shellrc/site.d ]
then
  for file in $HOME/.shellrc/site.d/*.active
  do
    source $file
  done
fi

PATH="/Users/c70b/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/c70b/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/c70b/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/c70b/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/c70b/perl5"; export PERL_MM_OPT;

AUTOSUGGEST='/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh'
[[ -f $AUTOSUGGEST ]] && . $AUTOSUGGEST

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

