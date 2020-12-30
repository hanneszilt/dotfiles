#!/usr/bin/env bash
set -e

# https://artii.herokuapp.com/make?text=install%20git&font=slant
echo '    _            __        ____         _ __ '
echo '   (_)___  _____/ /_____ _/ / /  ____ _(_) /_'
echo '  / / __ \/ ___/ __/ __ `/ / /  / __ `/ / __/'
echo ' / / / / (__  ) /_/ /_/ / / /  / /_/ / / /_  '
echo '/_/_/ /_/____/\__/\__,_/_/_/   \__, /_/\__/  '
echo '                              /____/         '
echo ''
if ! command -v git &> /dev/null; then
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
curl -sfL https://git.io/chezmoi | sudo sh
echo ''
echo "run 'source ~/.profile' to add it to your PATH"
echo ''
