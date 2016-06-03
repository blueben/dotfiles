# ChefDK configuration

if [ `/usr/bin/uname -o` = Msys ] || [ `/usr/bin/uname -o` = Cygwin ]
then

  export PATH="/c/opscode/chefdk/embedded/bin:$PATH"
  export PATH="$HOME/AppData/Local/chefdk/gem/ruby/2.1.0/bin:$PATH"
  export PATH="/c/opscode/chefdk/bin:$PATH"

  export GEM_ROOT="/c/opscode/chefdk/embedded/lib/ruby/gems/2.1.0"
  export GEM_HOME="$HOME/AppData/Local/chefdk/gem/ruby/2.1.0"
  export GEM_PATH="$HOME/AppData/Local/chefdk/gem/ruby/2.1.0:/c/opscode/chefdk/embedded/lib/ruby/gems/2.1.0"

  _chef_comp() {
      local COMMANDS="exec env gem generate shell-init install update push push-archive show-policy diff provision export clean-policy-revisions clean-policy-cookbooks delete-policy-group delete-policy undelete verify"
      COMPREPLY=($(compgen -W "$COMMANDS" -- ${COMP_WORDS[COMP_CWORD]} ))
  }
    complete -F _chef_comp chef

fi
