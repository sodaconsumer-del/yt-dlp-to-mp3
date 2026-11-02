# mp3-downloader

simple batch script to download youtube and spotify links (or search by song name) straight to your downloads folder as an mp3.

## setup

open powershell or cmd and run this to install yt-dlp and ffmpeg to your PATH automatically:
```
winget install yt-dlp.yt-dlp
```

if you want spotify links to work, install spotdl too:
```
pip install spotdl
```
*(if you don't use winget/pip, just download yt-dlp.exe, ffmpeg.exe, and spotdl.exe, put them in a folder, and add that folder to your Windows Environment Variables -> Path).*

## how to use

run `mp3.bat` and type/paste into the window:
- **youtube / soundcloud:** paste the link and hit enter
- **spotify:** paste a track/playlist link and it'll automatically use spotdl
- **song search:** just type the song name instead of a link and it grabs the top youtube result

everything saves to your default downloads folder.
