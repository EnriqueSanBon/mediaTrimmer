@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
echo Comienza el Cortado del video
::ffmpeg -i the-simpsons-s01e04-esp-hdtv.avi -c copy -ss 00:05:00 -t 00:00:20 outfile.mp4
pause

@echo off 
set /a count = 1
set extension=.mp4
set list=00:05:00 00:06:00 00:07:00 00:08:00 
(for %%a in (%list%) do ( 
	echo Empieza bucle
	echo %%a 
	echo %count%
	echo %extension%
	SET output=!count!%extension%
    echo !output!
  	ffmpeg -i the-simpsons-s01e04-esp-hdtv.avi -c copy -ss %%a -t 00:00:20 !output!
	set /a count += 1
))
pause

exit