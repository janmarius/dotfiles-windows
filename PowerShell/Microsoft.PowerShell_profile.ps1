Set-PSReadLineOption -EditMode Vi
oh-my-posh init pwsh --config "$HOME\Dev\dotfiles-windows\oh-my-posh\paradox.omp.json" | Invoke-Expression

function dev {
    Set-Location "$HOME\Dev"
}

function dot {
    Set-Location "$HOME\Dev\dotfiles-windows"
}
