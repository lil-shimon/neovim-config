# Cheat Sheet

## utils

- `.`  :  前回の動作を再度使う (vim-repeat)
- `gaip   = `  : = の位置で揃える (vim-easy-align)
- `gaip  *= `  : = の位置で揃える (vim-easy-align)
- `gaip* *= `  : = の位置で揃える
- `:call dein#install()`  :  plugin install
- `:call dein#update()`  :  plugin update
- `:call {plugin name}#Status()`  : check plugin install correctly 
- `:PreviewMarkdown` : preview markdown using mdr
- `K`  :  カーソル上の文字の説明をみる
- `space b`  :  open browser smart search by key word on cursor
- `<leader>j`  :  auto import (React)
- `:h UltiSnips`  :  UltiSnips (snippets) help
- `:UltiSnipsEdit`  :  create the base of snippets file
- `<C-j>`  :  next (UltiSnips)
- `<C-k>`  :  before (UltiSnips)
- `<C-a>`  :  show nerdtree


## ale linter

- `C-k`  :  前の警告へジャンプ
- `C-j`  :  後ろの警告へジャンプ



## coc

- `CocCommend flutter.run`  :  run flutter run


## fzf command

- `Files` : check files
- `Colors`  :  check colorscheme
- `GFiles?`  :  check git status
- `Buffers`  :  open buffers
- `Commits`  :  git commit
- `<C-p>`  :  search files
- `<leader>f`  :  search words in all files


## config keymap

- `space .`  :  open init.vim


## terminal on nvim

- `:Tnew`        :  open terminal
- `T {command}`  :  execute command
- `C-w`          :  exit terminal mode


## React snippets

- `clg`        :  console.log
- `imp`        :  import {} from ""
- `imr`        :  import React from 'react'
- `ecr`        :  export const func
- `ustl`        :  useStyles
- `styl`        :  styled-components
- `reactbase`        :  my react base component format
- `classes`        :  classes declaration for useStyles
- `cm`        :  block comment
- `cme`        :  expend block comment
- `immakestyles`        :  import makeStyles
- `rf`        :  react fragment
- `jsx`        :  html in jsx
- `cln`        :  className def
- `us`        :  useState
- `ue`        :  useState
- `handler`        :  handler (w/ return)
- `setarr`        :  setState for array


## toml snippets

- `plu`        :  plugin install format (basic)
- `cm`        :  comment for toml


## php snippets

- `func`        :  basic function
- `furcr`        :  simple return function
- `mdl`        :  basic model
- `fr`        :  foreach
- `trans`        :  transaction


## dart snippets

- `cls`        :  dart class (basic)


## scss snippets

- `sc`        :  base css format
- `var`        :  declare variable
- `if`        :  if statement
- `ife`        :  if else statement
- `elif`        :  if else else if


## python snippets

- `imr`        :  from import
- `cls`        :  class statement (basic)
- `dev`        :  def statement (basic)

