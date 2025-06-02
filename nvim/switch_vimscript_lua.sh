#!/bin/env bash

if [[ -f "./init.vim" ]]; then
  echo "VimScript=>Lua"
  mv init{,_backup}.vim
  mv init{_backup,}.lua
else
  echo "Lua=>VimScript"
  mv init{_backup,}.vim
  mv init{,_backup}.lua
fi
