# path, the 0 in the filename causes this to load first
<<<<<<< HEAD

pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
=======
path=(
  $path
  $HOME/.yadr/bin
  $HOME/.yadr/bin/yadr
  $HOME/.bashhub/bin
  node_modules/.bin
  /usr/local/bin
  /usr/local/sbin
  /usr/bin
  /usr/sbin
)
>>>>>>> Update 0_path.zsh
