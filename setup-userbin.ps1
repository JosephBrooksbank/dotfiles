# Create the directory
New-Item -ItemType Directory -Force "$env:USERPROFILE\bin"

# Add to PATH (current session)
$env:PATH += ";$env:USERPROFILE\bin"

# To make it permanent
[Environment]::SetEnvironmentVariable("Path", $env:PATH + ";$env:USERPROFILE\bin", [EnvironmentVariableTarget]::User)

# add user scripts
cp .\git-co-fzf.bat $env:USERPROFILE\bin
