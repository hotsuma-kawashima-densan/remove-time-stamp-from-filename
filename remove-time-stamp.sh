#!/bin/bash

if [ $# -lt 1 ]; then
  files="$(ls)"
elif [ $# -eq 1 ] && [ -d "$1" ]; then
  cd "$1"
  files="$(ls)"
else
  files="$@"
fi

ESC=$(printf '\033')

files=$(echo $files | xargs -n1 | grep -E '_[0-9]{4}[0-9]{2}[0-9]{2}[0-9]{6}\..+')

echo $files | xargs -n1 | sed -E "s/(.+)(_[0-9]{4}[0-9]{2}[0-9]{2}[0-9]{6})(\..+)/mv \1${ESC}[31m\2${ESC}[m\3 -> \1\3/"

count=$(echo $files | xargs -n1 | sed '/^$/d' | wc -l)

if [ $count -eq 0 ]; then
  echo "No files to rename."
  exit 0
fi

echo
read -p "$count will be renamed. Do you want to continue? [y/n] " answer

case $answer in
  [Yy]* )
    echo $files | xargs -n1 | sed -E "s/(.+)(_[0-9]{4}[0-9]{2}[0-9]{2}[0-9]{6})(\..+)/mv \1\2\3 \1\3/" | bash
    ;;
  * )
    echo "Canceled."
    ;;
esac
