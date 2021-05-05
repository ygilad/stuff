## Install
- copy files inside this dir to `~/short`
- run `chmod +x ~/short/*.sh`
- add the following in `.bashrc` with `vim ~/.bashrc`
  ```
  # UVG conviniance aliases
  if [ -f ~/short/set-aliases.sh ]; then
      source ~/short/set-aliases.sh
  fi
  ```
## usage
Type `menu_shortcuts` to see the alias` menu
