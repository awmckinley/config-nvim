#!/usr/bin/env bash
#
# Install Neovim config.

set -o errexit  # exit if any command fails
set -o nounset  # prevent using an undefined variable
set -o pipefail # pipelines fail early
IFS=$'\n\t'

target="$(dirname "$(realpath "$0")")"
source="${HOME}/.config/nvim"

if test -e "$source"; then
	if test "$(realpath "$source")" = "$target"; then
		echo "${source} already points to ${target}"
		exit 0
	else
		echo "WARN: ${source} already exists. Please delete or rename it first."
		exit 1
	fi
fi

ln -s "$target" "$source"
echo "Pointed ${source} to ${target}"
