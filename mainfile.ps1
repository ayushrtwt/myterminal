In PowerShell\Microsoft.PowerShell_profile.ps1
#Prompt
oh-my-posh init pwsh --config 'C:/Users/HP/OneDrive/Documents/Powershell/myprofile.omp.json' | Invoke-Expression
#oh-my-posh init pwsh | Invoke-Expression

#function
function whereis ($command){
        Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
#PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
