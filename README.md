# My Dotfiles

## (Windows) Requirements
- chocolately
- minGW (`choco install mingw`)
- sed (`choco install sed`)
- rust
  - ripgrep
- [starship](starship.rs)
- [wezterm](https://wezfurlong.org/wezterm/index.html)
- [altSnap](https://github.com/RamonUnch/AltSnap)
- neovim


## (Linux) Requirements
- neovim
- rust
  - ripgrep 
- [starship](starship.rs)
- [wezterm](https://wezfurlong.org/wezterm/index.html)




## Locations 
Hard Links in Windows can be written with
`New-Item -Path C:\LinkDir -ItemType SymbolicLink -Value F:\RealDir`
- `.vimrc` -> `$HOME/.vimrc`
- `.ideavimrc` -> `$HOME/.ideavimrc`
- `nvim` -> `$HOME/AppData/Local/nvim/`
- `AltSnap.ini` -> `$HOME/AppData/Roaming/AltSnap`

everything else in `.config` can be mirrored in `$HOME/.config`. 

For linux, everything goes to `~/.config`




## TODO
- Write an install script

