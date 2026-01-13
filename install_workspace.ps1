# setup-env.ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# install Scoop 
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Scoop..."
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
} else {
    Write-Host "Scoop is already installed."
}

# update scoop
scoop install git
scoop update


# add buckets
scoop bucket add extras
scoop bucket add java
scoop bucket add r-bucket https://github.com/cderv/r-bucket.git

# install programs
scoop install openjdk
scoop install vscode


scoop install tinytex
tlmgr install pgf amsmath amssymb amsthm graphicx csquotes tikz cancel framed
tlmgr install pgf
# music stuff

scoop install ffmpeg mpv yt-dlp deno
Write-Host "All installations complete!"

