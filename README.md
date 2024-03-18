# My Dotfiles

## Requirements (Windows)
- chocolately
- minGW (`choco install mingw`)
- sed (`choco install sed`)


## Locations 
Hard Links in Windows can be written with
`New-Item -Path C:\LinkDir -ItemType SymbolicLink -Value F:\RealDir`
- `.vimrc` -> `$HOME/.vimrc`
- `.ideavimrc` -> `$HOME/.ideavimrc`
- `nvim` -> `$HOME/AppData/Local/nvim/`



## TODO
- Write an install script

