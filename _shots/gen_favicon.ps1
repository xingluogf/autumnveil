Add-Type -AssemblyName System.Drawing
$src = "C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\assets\favicon.png"
$img = [System.Drawing.Image]::FromFile($src)
$size = 64
$bmp = New-Object System.Drawing.Bitmap($size, $size)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
$dest = New-Object System.Drawing.Rectangle(0, 0, $size, $size)
$g.DrawImage($img, $dest)
$g.Dispose()
$out = "C:\Users\Administrator\Doubao\chats\2026-09-18\new-chat\shenqiu-studio\assets\favicon-64.png"
$bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
$img.Dispose()
Write-Output "saved $out"
