# This is .zshrc
stage=".zshrc"

##
# Load ZSH Functions

if [[ $SH_CONFIG/zfunc.d/(#qNF) ]]
then
  fpath=( $SH_CONFIG/zfunc.d "${fpath[@]}" )
  for file in $SH_CONFIG/zfunc.d/*
  do
    #printf "%-15s%s\n" $stage $file 
    func_name=$(basename $file)
    autoload -Uz $func_name
  done
fi

##
# Load ZSH completions

if [[ $SH_CONFIG/zcomp.d/(#qNF) ]]
then
  fpath=( $SH_CONFIG/zcomp.d "${fpath[@]}" )
  for file in $SH_CONFIG/zcomp.d/*
  do
    #printf "%-15s%s\n" $stage $file 
    autoload -U compinit
  done
fi

##
# Load additional ZSH configuration files

if [[ $SH_CONFIG/rc.d/(#qNF) ]]
then
  for file in $SH_CONFIG/rc.d/*
  do
    #printf "%-15s%s\n" $stage $file 
    source "$file"
  done
fi




### EAZE AUTOGENERATED at 2023-02-07T16:41:39Z
export PATH="$PATH:/Users/bkrueger/src/eaze/infrastructure/env/bin/trampolines"
### END EAZE AUTOGENERATED
