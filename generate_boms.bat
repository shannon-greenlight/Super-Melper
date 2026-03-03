@echo off

echo This creates BOM files for building the SuperMelper
echo It requires SuperMelper.xml as an input. Make sure that it is up to date. Use the KiCAD schematic BOM generator with the bom2grouped_csv.xsl plugin that's supplied with KiCAD.

set plugin_dir=C:\Users\shann\Dropbox\Python\BOM

py "%plugin_dir%/bom_lcsc.py" "SuperMelper.xml" "bom\LCSC\SuperMelper_bom.csv"

py "%plugin_dir%/bom_digikey_split.py" "SuperMelper.xml" "bom\Digi-Key\SuperMelper_split.csv"

py "%plugin_dir%/bom_digikey_full.py" "SuperMelper.xml" "bom\Digi-Key\SuperMelper_full.csv"

if not errorlevel 1 echo Success!

pause
