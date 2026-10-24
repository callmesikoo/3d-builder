@echo off
cd /d "%~dp0"
echo Installazione di Microsoft 3D Builder...
echo.
echo [1/2] Dipendenza Microsoft.UI.Xaml.2.0 (se gia presente viene saltata)
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Add-AppxPackage -Path '.\Microsoft.UI.Xaml.2.0_2.1810.18004.0_x64__8wekyb3d8bbwe.appx' -ErrorAction Stop; 'OK' } catch { 'Gia installata o non necessaria, continuo.' }"
echo.
echo [2/2] 3D Builder
powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Add-AppxPackage -Path '.\Microsoft.3DBuilder_20.0.4.0_neutral_~_8wekyb3d8bbwe.AppxBundle' -ErrorAction Stop; 'FATTO! Cerca 3D Builder nel menu Start.' } catch { 'ERRORE:'; $_.Exception.Message }"
echo.
pause
