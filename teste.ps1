<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    teste
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

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