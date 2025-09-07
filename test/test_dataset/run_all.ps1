# Save this as, for example, run_all.ps1, then run:
#   powershell .\run_all.ps1
# from your test_data directory

# Loop over all .bin files in the current folder:
foreach ($file in Get-ChildItem -Path . -Filter *.bin) {
    Write-Host "Processing file:" $file.Name
    .\caca_app -f $file.Name -i 4
    Write-Host "---------------------------------------"
}
