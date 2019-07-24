$scriptlocation = "$ENV:USERPROFILE\MorningGreeting"

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Font = new-object system.drawing.font('MS Reference Sans Serif',14)
$form.FormBorderStyle = 'none'
$form.Text = 'Good morning dear user!'
$form.Size = New-Object System.Drawing.Size(493,230)
$form.StartPosition = 'CenterScreen'
$form.ControlBox = $false
$form.backcolor = '#c0c0c0'

$icon = new-object System.Windows.Forms.PictureBox
$icon.imagelocation = "$scriptlocation\bubble_i.png"
$icon.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$icon.location = new-object system.drawing.point(27,64)
$icon.size = new-object system.drawing.size(55,55)
$form.Controls.Add($icon)

$xButton = New-Object System.Windows.Forms.Button
$xButton.Location = New-Object System.Drawing.Point(458,9)
$xButton.Size = New-Object System.Drawing.Size(28,24)
$xButton.Text = 'X'
$xButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$xButton.enabled = $false
$form.CancelButton = $xButton
$form.Controls.Add($xButton)

$title = new-object System.Windows.Forms.Label
$title.location = new-object system.drawing.point(3,3)
$title.size = new-object system.drawing.size(487,36)
$title.text = "Good morning dear user!"
$title.font = 'MS Reference Sans Serif,16,style=bold'
$title.ForeColor = 'white'
$title.backcolor = 'blue'
$title.TextAlign = 'middleleft'
$form.Controls.Add($title)

$bar1 = new-object System.Windows.Forms.Panel
$bar1.location = new-object system.drawing.point(0,0)
$bar1.size = new-object system.drawing.size(493,1)
$bar1.BackColor = 'white'
$form.Controls.Add($bar1)

$bar2 = new-object System.Windows.Forms.Panel
$bar2.location = new-object system.drawing.point(0,1)
$bar2.size = new-object system.drawing.size(492,1)
$bar2.BackColor = 'white'
$form.Controls.Add($bar2)

$bar3 = new-object System.Windows.Forms.Panel
$bar3.location = new-object system.drawing.point(0,2)
$bar3.size = new-object system.drawing.size(1,228)
$bar3.BackColor = 'white'
$form.Controls.Add($bar3)

$bar4 = new-object System.Windows.Forms.Panel
$bar4.location = new-object system.drawing.point(1,2)
$bar4.size = new-object system.drawing.size(1,227)
$bar4.BackColor = 'white'
$form.Controls.Add($bar4)

$bar5 = new-object System.Windows.Forms.Panel
$bar5.location = new-object system.drawing.point(1,229)
$bar5.size = new-object system.drawing.size(492,1)
$bar5.BackColor = 'black'
$form.Controls.Add($bar5)

$bar6 = new-object System.Windows.Forms.Panel
$bar6.location = new-object system.drawing.point(2,228)
$bar6.size = new-object system.drawing.size(491,1)
$bar6.BackColor = 'black'
$form.Controls.Add($bar6)

$bar7 = new-object System.Windows.Forms.Panel
$bar7.location = new-object system.drawing.point(492,1)
$bar7.size = new-object system.drawing.size(1,227)
$bar7.BackColor = 'black'
$form.Controls.Add($bar7)

$bar8 = new-object System.Windows.Forms.Panel
$bar8.location = new-object system.drawing.point(491,2)
$bar8.size = new-object system.drawing.size(1,226)
$bar8.BackColor = 'black'
$form.Controls.Add($bar8)

$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Point(120,160)
$OKButton.Size = New-Object System.Drawing.Size(120,40)
$OKButton.Text = 'Great!'
$OKButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$OKButton.enabled = $false
$form.AcceptButton = $OKButton
$form.Controls.Add($OKButton)

$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(285,160)
$CancelButton.Size = New-Object System.Drawing.Size(150,40)
$CancelButton.Text = 'Fuck you'
$CancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$form.CancelButton = $CancelButton
$form.Controls.Add($CancelButton)

$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(95,70)
$label.Size = New-Object System.Drawing.Size(380,50)
$label.Text = "How are we feeling this fine morning?"
$form.Controls.Add($label)
$form.Topmost = $true

$result = $form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    Write-Host = "lolno"
}
Else {
    Write-Host = "drinkcoffee"
}