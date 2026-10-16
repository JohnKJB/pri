# Downloads Aurelle's images and icons into an "assets" folder next to index.html.
# Run: right-click this file > Run with PowerShell (links expire 7 days after export).
$base = "https://www.figma.com/api/mcp/asset/26d776e6-182a-4820-a7d2-1b450c6decca"
$files = @(
  "f53cd.png",
  "d14f1.png",
  "f52c2.png",
  "fa73c.png",
  "73929.png",
  "67a2c.png",
  "f9167.png",
  "6ed08.png",
  "d720d.png",
  "d588a.png",
  "7631c.png",
  "1db20.png",
  "82582.png",
  "c7d0e.png",
  "4e7bb.svg",
  "7356a.svg",
  "45930.svg",
  "cb245.svg",
  "fe7ac.svg",
  "e028c.svg",
  "9cc08.svg",
  "de5bf.svg",
  "8eb59.svg",
  "7aca1.svg",
  "f2c7f.svg",
  "c13db.svg",
  "802b3.svg",
  "21b83.svg",
  "87ea6.svg",
  "b2410.svg",
  "0c17d.svg",
  "3948e.svg",
  "8191d.svg",
  "9586d.svg"
)
New-Item -ItemType Directory -Force -Path "$PSScriptRoot\assets" | Out-Null
foreach ($f in $files) {
  Invoke-WebRequest -Uri "$base/$f" -OutFile "$PSScriptRoot\assets\$f"
  Write-Host "Downloaded $f"
}
Write-Host "Done. Open index.html."
