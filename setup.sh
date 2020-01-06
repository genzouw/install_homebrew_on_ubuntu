#!/usr/bin/env bash
set -o nounset
set -o noclobber

sudo apt-get update
sudo apt-get install -y curl git build-essential

which brew >/dev/null 2>&1 || {
  yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

  test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
  test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
  echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
}

cat <<EOF
****************************************
* EXECUTE FOLLOW COMMAND TO USE BREW!  *
*                                      *
*   . ~/.profile                       *
****************************************
EOF
