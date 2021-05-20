Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco)
    Switch ($Prompt) {
        #This will debloat Windows 10
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
}

$PACK-SAMURAI                    = New-Object system.Windows.Forms.Form
$PACK-SAMURAI.ClientSize         = New-Object System.Drawing.Point(800,600)
$PACK-SAMURAI.text               = "PACK-SAMURAI"
$PACK-SAMURAI.TopMost            = $false

$botao1                          = New-Object system.Windows.Forms.Button
$botao1.text                     = "botão1"
$botao1.width                    = 60
$botao1.height                   = 30
$botao1.location                 = New-Object System.Drawing.Point(22,522)
$botao1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$botão2                          = New-Object system.Windows.Forms.Button
$botão2.text                     = "botão2"
$botão2.width                    = 60
$botão2.height                   = 30
$botão2.location                 = New-Object System.Drawing.Point(686,522)
$botão2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$PACK-SAMURAI.controls.AddRange(@($botao1,$botão2))




#Write your logic code here

[void]$PACK-SAMURAI.ShowDialog()
