# Media Trimmer

Media Trimmer is a bash script that allows you to extract fragments of a video with the specified duration for each fragment. Only Windows.

## Installation

Install ffmpeg in your computer. Please follow this tutorial to have it installed globally in windows. https://www.geeksforgeeks.org/how-to-install-ffmpeg-on-windows/

Check you have correctly installed ffmpeg running 
```bash
$ ffmpeg -v
```

Paste the mediaTrimmer.cmd script inside the root folder you have installed ffmpeg. Depends of the way you install ffmpeg, without doing this, you may have a terminal error (ffmpeg not recognized as a command)

## Usage
Open the script and specify the vars
set list=00:01:00 00:01:30 
set durations=00:00:05 00:00:10 

List array contains the start point of each fragment you want to stact from the video
Durations array contains the duration of each fragment

In this example you will extract two fragments
00:01:00 -> 00:01:05
00:01:30 -> 00:01:40

```cmd
# Run as admin
specify the absolute path to the video you want to extract fragments. The fragments will appears in the same directory.


```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)