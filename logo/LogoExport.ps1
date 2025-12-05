# -------------------------------
# CONFIGURATION
# -------------------------------

# Path to your SVG
$file = "Logo.svg"

# Output folder (optional)
#$out = "export"
#New-Item -ItemType Directory -Force -Path $out | Out-Null

# -------------------------------
# EXPORT PAGE 1 LAYERS
# -------------------------------

# Page 1 layer IDs (replace with your actual IDs)
$darkLayer  = "g13"
$lightLayer = "g16"

& "C:\Program Files\Inkscape\bin\inkscape.com" $file --export-type=svg --export-page=1 --export-id=$darkLayer  --export-id-only --export-filename="LogoLight.svg"
& "C:\Program Files\Inkscape\bin\inkscape.com" $file --export-type=svg --export-page=1 --export-id=$lightLayer --export-id-only --export-filename="LogoDark.svg"

# -------------------------------
# EXPORT PAGE 2 ICONS
# -------------------------------

# Page 2 icon layer IDs
$darkLayer  = "g19"
$lightLayer = "g21"

& "C:\Program Files\Inkscape\bin\inkscape.com" $file --export-type=png --export-page=2 --export-id=$darkLayer  --export-id-only --export-width=32 --export-height=32 --export-filename="IconLight-32.png"
& "C:\Program Files\Inkscape\bin\inkscape.com" $file --export-type=png --export-page=2 --export-id=$lightLayer --export-id-only --export-width=32 --export-height=32  --export-filename="IconDark-32.png"
