#export PS1='\u@\h \w \$ '

export LC_TYPE="C.utf8"

rightprompt()
{
    printf "%*s" $COLUMNS $?
}

#if [[ $LC_CTYPE =~ \.[Uu][Tt][Ff]-?8 ]]; then
#  export PS1=$'$? \e[0;32m\xce\xbb\x0a\e[0m '
  export PS1=$'$(rightprompt)\e[0;32m\u03bb\e[0m '
#fi
