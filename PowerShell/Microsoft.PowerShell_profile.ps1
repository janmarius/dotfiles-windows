oh-my-posh init pwsh --config "$HOME\Dev\dotfiles-windows\oh-my-posh\paradox-dark-plus.omp.json" | Invoke-Expression

function dev {
    Set-Location "$HOME\Dev"
}

function dot {
    Set-Location "$HOME\Dev\dotfiles-windows"
}

Set-PSReadLineOption -EditMode Vi
Write-Host -NoNewline "`e[6 q"

function OnViModeChange($mode) {
    switch ($mode) {
        'Command' {
            # NORMAL mode: solid block cursor
            Write-Host -NoNewline "`e[2 q"
        }
        'Insert' {
            # INSERT mode: blinking bar cursor
            Write-Host -NoNewline "`e[6 q"
        }
    }
}

# Tell PSReadLine to call our handler whenever the mode changes
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange
