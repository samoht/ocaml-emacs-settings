#!/bin/sh

if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` <package> ... <package>"
  exit 1
fi

for var in "$@"
do
    emacs --batch --eval "(defconst pkg-to-install '$var)" -L "~/.emacs.d/" -l emacs-pkg-install.el
done
