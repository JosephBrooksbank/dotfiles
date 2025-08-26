@echo off
powershell -Command "$branch = (git branch -a --sort=-committerdate | fzf --header 'git checkout' | ForEach-Object { ($_.Trim() -split '\s+')[0] -replace 'remotes/origin/', '' }); if ($branch) { git checkout $branch }"
