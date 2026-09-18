Add-Type -AssemblyName System.Drawing
$src = "C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\_shots\index_desktop.png"
$img = [System.Drawing.Image]::FromFile($src)
$w = $img.Width
$h = $img.Height
$y = [int]($h * 0.60)
$hh = 1200
$crop = New-Object System.Drawing.Bitmap($w, $hh)
$g = [System.Drawing.Graphics]::FromImage($crop)
$dest = New-Object System.Drawing.Rectangle(0, 0, $w, $hh)
$srcRect = New-Object System.Drawing.Rectangle(0, $y, $w, $hh)
$g.DrawImage($img, $dest, $srcRect, [System.Drawing.GraphicsUnit]::Pixel)
$g.Dispose()
$crop.Save("C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\_shots\desktop_timeline.png", [System.Drawing.Imaging.ImageFormat]::Png)
$crop.Dispose()
$img.Dispose()
Write-Output "ok $w x $h, crop y=$y h=$hh"
