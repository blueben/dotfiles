#export PS1='\u@\h \w \$ '

export LC_TYPE="C.utf8"

rightprompt() {
    tput sc
    printf "%*s" $COLUMNS $?
    tput rc
}

LAMBDA=$'\u03bb'
GREEN=$'\033[0;92m'
RED=$'\033[0;94m'
RESET=$'\033[0m'

#if [[ $LC_CTYPE =~ \.[Uu][Tt][Ff]-?8 ]]; then
  export PS1=$'\n$(rightprompt) $RED\w$RESET\n$GREEN $LAMBDA $RESET'
#fi
