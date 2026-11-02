@echo off
title MP3 Downloader (yt-dlp + spotDL)
setlocal EnableDelayedExpansion

:loop
cls
set "url="
set /p "url=Paste URL (YouTube/Spotify) or type a song name (Enter to exit): "

if not defined url exit /b

echo.
if not "!url:spotify.com=!"=="!url!" (
    spotdl download "!url!" --output "%USERPROFILE%\Downloads"
) else (
    yt-dlp -x --audio-format mp3 --audio-quality 0 --no-playlist --default-search "ytsearch" -P "%USERPROFILE%\Downloads" -o "%%(title)s.%%(ext)s" "!url!"
)

echo.
echo Done, saved to your downloads folder.
pause
goto loop