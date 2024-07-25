@echo off
REM Skrip batch untuk memindahkan file dengan prefix tertentu ke direktori tertentu

REM Prefix nama file yang ingin dipindahkan
set "pattern=*ha*"

REM Direktori tujuan
set "target_dir=D:\dataset\DeteksiBahasaIsyarat\valid\images\ha"

REM Periksa apakah direktori tujuan ada, jika tidak maka buat direktori tersebut
if not exist "%target_dir%" (
    mkdir "%target_dir%"
)

REM Pindahkan file dengan prefix tertentu ke direktori tujuan
for %%f in (%pattern%*) do (
    if exist "%%f" (
        move "%%f" "%target_dir%"
        echo File "%%f" telah dipindahkan ke "%target_dir%"
    )
)

echo Proses selesai!
pause
