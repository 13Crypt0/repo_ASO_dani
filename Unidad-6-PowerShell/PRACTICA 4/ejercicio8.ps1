for ($i=1; $i -le 9; $i += 2) {
    for ($b=$i; $b -ge 1; $b -= 2) {
        Write-Host -NoNewline "$b "
    }
    Write-Host ""
}