#!/usr/bin/env bash
set -e

is_command() {
  command -v "$1" > /dev/null
}

# https://artii.herokuapp.com/make?text=install%20git&font=slant
echo '    _            __        ____         _ __ '
echo '   (_)___  _____/ /_____ _/ / /  ____ _(_) /_'
echo '  / / __ \/ ___/ __/ __ `/ / /  / __ `/ / __/'
echo ' / / / / (__  ) /_/ /_/ / / /  / /_/ / / /_  '
echo '/_/_/ /_/____/\__/\__,_/_/_/   \__, /_/\__/  '
echo '                              /____/         '
echo ''
if ! is_command git; then
  sudo apt-get install -y git
else
  echo 'git already installed'
fi

echo ''
echo '    _            __        ____        __                              _ '
echo '   (_)___  _____/ /_____ _/ / /  _____/ /_  ___ ____  ____ ___  ____  (_)'
echo '  / / __ \/ ___/ __/ __ `/ / /  / ___/ __ \/ _ \_  / / __ `__ \/ __ \/ / '
echo ' / / / / (__  ) /_/ /_/ / / /  / /__/ / / /  __// /_/ / / / / / /_/ / /  '
echo '/_/_/ /_/____/\__/\__,_/_/_/   \___/_/ /_/\___//___/_/ /_/ /_/\____/_/   '
echo ''
if ! is_command chezmoi; then
  cd "$HOME"
  curl -sfL https://git.io/chezmoi | sudo sh
  chezmoi="$HOME/bin/chezmoi"
  echo ''
  echo "run 'source ~/.profile' to add it to your PATH"
else
  chezmoi=chezmoi
  echo 'chezmoi already installed'
fi

echo ''
echo '        __                              _    _       _ __ '
echo '  _____/ /_  ___ ____  ____ ___  ____  (_)  (_)___  (_) /_'
echo ' / ___/ __ \/ _ \_  / / __ `__ \/ __ \/ /  / / __ \/ / __/'
echo '/ /__/ / / /  __// /_/ / / / / / /_/ / /  / / / / / / /_  '
echo '\___/_/ /_/\___//___/_/ /_/ /_/\____/_/  /_/_/ /_/_/\__/  '
echo ''

exec "$chezmoi" init --verbose https://github.com/hanneszilt/dotfiles.git --apply
