@echo off
setlocal EnableDelayedExpansion


echo Comienza el Cortado del video
echo The current directory is %CD%
@echo off
set /p FILEPATH="Absolute path to video file: "
echo The video path is: %FILEPATH%
::ffmpeg -i the-simpsons-s01e04-esp-hdtv.avi -c copy -ss 00:05:00 -t 00:00:20 outfile.mp4
pause

set /a count=0
set extension=.mp4
set list=00:01:00 00:01:30 
set durations=00:00:05 00:00:10 
:::set nameInput=C:\FFmpeg\video.avi
set nameInput=%FILEPATH%

(for %%b in (%durations%) do (
	set durations[!count!]=%%b
	set /a count += 1
))

set /a count=0
(for %%a in (%list%) do (
	echo Empieza bucle
	echo %%a
	echo !count!
	call set "aux=%%durations[!count!]%%"
	echo !aux!

	echo %extension%
	SET output=%nameInput%!count!%extension%
    echo !output!
  	echo ffmpeg -i %nameInput% -c copy -ss %%a -t !aux! -c:v libx264 -crf 17 -c:a aac !output!
  	ffmpeg -i %nameInput% -c copy -ss %%a -t !aux! -c:v libx264 -crf 17 -c:a aac  !output!
	set /a count += 1
))
pause
endlocal

exit
