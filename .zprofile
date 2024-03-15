# This is .zprofile
stage=".zprofile"

if [[ $SH_CONFIG/zfunc.d/is_*(#qN) ]]; then
  source $SH_CONFIG/zfunc.d/is_*
fi

##
# Load env vars

if [[ $SH_CONFIG/profile.d/(#qNF) ]]; then
  for file in $SH_CONFIG/profile.d/*
  do
    #printf "%-15s%s\n" $stage $file 
    source "$file"
  done
fi
