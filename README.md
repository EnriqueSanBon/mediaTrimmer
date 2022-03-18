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
Specify the absolute path to the video you want to extract fragments. The fragments will appears in the same directory.

```cmd
# Run as admin
Comienza el Cortado del video
The current directory is C:\Windows\system32
Absolute path to video file: C:\FFmpeg\video.avi
The video path is: C:\FFmpeg\video.avi
Presione una tecla para continuar . . .
Empieza bucle
00:01:00
0
00:00:05
.mp4
C:\FFmpeg\video.avi0.mp4
ffmpeg -i C:\FFmpeg\video.avi -c copy -ss 00:01:00 -t 00:00:05 -c:v libx264 -crf 17 -c:a aac C:\FFmpeg\video.avi0.mp4
ffmpeg version 2022-03-17-git-242c07982a-full_build-www.gyan.dev Copyright (c) 2000-2022 the FFmpeg developers
  built with gcc 11.2.0 (Rev7, Built by MSYS2 project)
  configuration: --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-fontconfig --enable-iconv --enable-gnutls --enable-libxml2 --enable-gmp --enable-bzlib --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-sdl2 --enable-libdav1d --enable-libdavs2 --enable-libuavs3d --enable-libzvbi --enable-librav1e --enable-libsvtav1 --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxvid --enable-libaom --enable-libopenjpeg --enable-libvpx --enable-mediafoundation --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-ffnvcodec --enable-nvdec --enable-nvenc --enable-d3d11va --enable-dxva2 --enable-libmfx --enable-libshaderc --enable-vulkan --enable-libplacebo --enable-opencl --enable-libcdio --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libilbc --enable-libgsm --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint
  libavutil      57. 24.101 / 57. 24.101
  libavcodec     59. 25.100 / 59. 25.100
  libavformat    59. 20.100 / 59. 20.100
  libavdevice    59.  6.100 / 59.  6.100
  libavfilter     8. 29.100 /  8. 29.100
  libswscale      6.  6.100 /  6.  6.100
  libswresample   4.  6.100 /  4.  6.100
  libpostproc    56.  5.100 / 56.  5.100
Input #0, mov,mp4,m4a,3gp,3g2,mj2, from 'C:\FFmpeg\video.avi':
  Metadata:
    major_brand     : mp42
    minor_version   : 0
    compatible_brands: mp42mp41
    creation_time   : 2021-06-04T15:29:20.000000Z
  Duration: 00:02:37.76, start: 0.000000, bitrate: 10313 kb/s
  Stream #0:0[0x1](eng): Video: h264 (Main) (avc1 / 0x31637661), yuv420p(tv, bt709, progressive), 1280x720, 9993 kb/s, 29.97 fps, 29.97 tbr, 30k tbn (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : ?Mainconcept Video Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : AVC Coding
  Stream #0:1[0x2](eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 317 kb/s (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : #Mainconcept MP4 Sound Media Handler
      vendor_id       : [0][0][0][0]
Multiple -c, -codec, -acodec, -vcodec, -scodec or -dcodec options specified for stream 0, only the last option '-c:v libx264' will be used.
Multiple -c, -codec, -acodec, -vcodec, -scodec or -dcodec options specified for stream 1, only the last option '-c:a aac' will be used.
File 'C:\FFmpeg\video.avi0.mp4' already exists. Overwrite? [y/N] y
Stream mapping:
  Stream #0:0 -> #0:0 (h264 (native) -> h264 (libx264))
  Stream #0:1 -> #0:1 (aac (native) -> aac (native))
Press [q] to stop, [?] for help
[libx264 @ 000001db24550cc0] using cpu capabilities: MMX2 SSE2Fast SSSE3 SSE4.2 AVX FMA3 BMI2 AVX2 AVX512
[libx264 @ 000001db24550cc0] profile High, level 3.1, 4:2:0, 8-bit
[libx264 @ 000001db24550cc0] 264 - core 164 r3094 bfc87b7 - H.264/MPEG-4 AVC codec - Copyleft 2003-2022 - http://www.videolan.org/x264.html - options: cabac=1 ref=3 deblock=1:0:0 analyse=0x3:0x113 me=hex subme=7 psy=1 psy_rd=1.00:0.00 mixed_ref=1 me_range=16 chroma_me=1 trellis=1 8x8dct=1 cqm=0 deadzone=21,11 fast_pskip=1 chroma_qp_offset=-2 threads=12 lookahead_threads=2 sliced_threads=0 nr=0 decimate=1 interlaced=0 bluray_compat=0 constrained_intra=0 bframes=3 b_pyramid=2 b_adapt=1 b_bias=0 direct=1 weightb=1 open_gop=0 weightp=2 keyint=250 keyint_min=25 scenecut=40 intra_refresh=0 rc_lookahead=40 rc=crf mbtree=1 crf=17.0 qcomp=0.60 qpmin=0 qpmax=69 qpstep=4 ip_ratio=1.40 aq=1:1.00
Output #0, mp4, to 'C:\FFmpeg\video.avi0.mp4':
  Metadata:
    major_brand     : mp42
    minor_version   : 0
    compatible_brands: mp42mp41
    encoder         : Lavf59.20.100
  Stream #0:0(eng): Video: h264 (avc1 / 0x31637661), yuv420p(tv, bt709, progressive), 1280x720, q=2-31, 29.97 fps, 30k tbn (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : ?Mainconcept Video Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.25.100 libx264
    Side data:
      cpb: bitrate max/min/avg: 0/0/0 buffer size: 0 vbv_delay: N/A
  Stream #0:1(eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 128 kb/s (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : #Mainconcept MP4 Sound Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.25.100 aac
frame=  150 fps= 15 q=-1.0 Lsize=    2311kB time=00:00:05.01 bitrate=3776.4kbits/s dup=1 drop=0 speed=0.49x
video:2225kB audio:79kB subtitle:0kB other streams:0kB global headers:0kB muxing overhead: 0.293650%
[libx264 @ 000001db24550cc0] frame I:2     Avg QP:16.48  size:172550
[libx264 @ 000001db24550cc0] frame P:47    Avg QP:16.41  size: 31244
[libx264 @ 000001db24550cc0] frame B:101   Avg QP:20.18  size:  4596
[libx264 @ 000001db24550cc0] consecutive B-frames:  4.0% 14.7% 12.0% 69.3%
[libx264 @ 000001db24550cc0] mb I  I16..4:  9.9% 20.8% 69.3%
[libx264 @ 000001db24550cc0] mb P  I16..4: 11.0% 10.7%  4.5%  P16..4: 35.0% 17.4% 10.7%  0.0%  0.0%    skip:10.7%
[libx264 @ 000001db24550cc0] mb B  I16..4:  1.9%  1.6%  0.3%  B16..8: 31.3%  4.4%  0.7%  direct: 3.0%  skip:56.9%  L0:46.3% L1:42.4% BI:11.2%
[libx264 @ 000001db24550cc0] 8x8 transform intra:38.9% inter:53.6%
[libx264 @ 000001db24550cc0] coded y,uvDC,uvAC intra: 33.0% 38.0% 16.5% inter: 15.9% 14.4% 0.7%
[libx264 @ 000001db24550cc0] i16 v,h,dc,p: 23% 37% 17% 23%
[libx264 @ 000001db24550cc0] i8 v,h,dc,ddl,ddr,vr,hd,vl,hu: 26% 19% 43%  1%  2%  2%  2%  2%  3%
[libx264 @ 000001db24550cc0] i4 v,h,dc,ddl,ddr,vr,hd,vl,hu: 28% 19% 15%  5%  7%  7%  6%  5%  6%
[libx264 @ 000001db24550cc0] i8c dc,h,v,p: 56% 23% 16%  5%
[libx264 @ 000001db24550cc0] Weighted P-Frames: Y:19.1% UV:6.4%
[libx264 @ 000001db24550cc0] ref P L0: 53.0% 33.3%  9.7%  3.8%  0.2%
[libx264 @ 000001db24550cc0] ref B L0: 81.2% 16.4%  2.4%
[libx264 @ 000001db24550cc0] ref B L1: 99.0%  1.0%
[libx264 @ 000001db24550cc0] kb/s:3640.74
[aac @ 000001db244fc4c0] Qavg: 647.279
Empieza bucle
00:01:30
1
00:00:10
.mp4
C:\FFmpeg\video.avi1.mp4
ffmpeg -i C:\FFmpeg\video.avi -c copy -ss 00:01:30 -t 00:00:10 -c:v libx264 -crf 17 -c:a aac C:\FFmpeg\video.avi1.mp4
ffmpeg version 2022-03-17-git-242c07982a-full_build-www.gyan.dev Copyright (c) 2000-2022 the FFmpeg developers
  built with gcc 11.2.0 (Rev7, Built by MSYS2 project)
  configuration: --enable-gpl --enable-version3 --enable-static --disable-w32threads --disable-autodetect --enable-fontconfig --enable-iconv --enable-gnutls --enable-libxml2 --enable-gmp --enable-bzlib --enable-lzma --enable-libsnappy --enable-zlib --enable-librist --enable-libsrt --enable-libssh --enable-libzmq --enable-avisynth --enable-libbluray --enable-libcaca --enable-sdl2 --enable-libdav1d --enable-libdavs2 --enable-libuavs3d --enable-libzvbi --enable-librav1e --enable-libsvtav1 --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxvid --enable-libaom --enable-libopenjpeg --enable-libvpx --enable-mediafoundation --enable-libass --enable-frei0r --enable-libfreetype --enable-libfribidi --enable-libvidstab --enable-libvmaf --enable-libzimg --enable-amf --enable-cuda-llvm --enable-cuvid --enable-ffnvcodec --enable-nvdec --enable-nvenc --enable-d3d11va --enable-dxva2 --enable-libmfx --enable-libshaderc --enable-vulkan --enable-libplacebo --enable-opencl --enable-libcdio --enable-libgme --enable-libmodplug --enable-libopenmpt --enable-libopencore-amrwb --enable-libmp3lame --enable-libshine --enable-libtheora --enable-libtwolame --enable-libvo-amrwbenc --enable-libilbc --enable-libgsm --enable-libopencore-amrnb --enable-libopus --enable-libspeex --enable-libvorbis --enable-ladspa --enable-libbs2b --enable-libflite --enable-libmysofa --enable-librubberband --enable-libsoxr --enable-chromaprint
  libavutil      57. 24.101 / 57. 24.101
  libavcodec     59. 25.100 / 59. 25.100
  libavformat    59. 20.100 / 59. 20.100
  libavdevice    59.  6.100 / 59.  6.100
  libavfilter     8. 29.100 /  8. 29.100
  libswscale      6.  6.100 /  6.  6.100
  libswresample   4.  6.100 /  4.  6.100
  libpostproc    56.  5.100 / 56.  5.100
Input #0, mov,mp4,m4a,3gp,3g2,mj2, from 'C:\FFmpeg\video.avi':
  Metadata:
    major_brand     : mp42
    minor_version   : 0
    compatible_brands: mp42mp41
    creation_time   : 2021-06-04T15:29:20.000000Z
  Duration: 00:02:37.76, start: 0.000000, bitrate: 10313 kb/s
  Stream #0:0[0x1](eng): Video: h264 (Main) (avc1 / 0x31637661), yuv420p(tv, bt709, progressive), 1280x720, 9993 kb/s, 29.97 fps, 29.97 tbr, 30k tbn (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : ?Mainconcept Video Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : AVC Coding
  Stream #0:1[0x2](eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 317 kb/s (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : #Mainconcept MP4 Sound Media Handler
      vendor_id       : [0][0][0][0]
Multiple -c, -codec, -acodec, -vcodec, -scodec or -dcodec options specified for stream 0, only the last option '-c:v libx264' will be used.
Multiple -c, -codec, -acodec, -vcodec, -scodec or -dcodec options specified for stream 1, only the last option '-c:a aac' will be used.
File 'C:\FFmpeg\video.avi1.mp4' already exists. Overwrite? [y/N] y
Stream mapping:
  Stream #0:0 -> #0:0 (h264 (native) -> h264 (libx264))
  Stream #0:1 -> #0:1 (aac (native) -> aac (native))
Press [q] to stop, [?] for help
[libx264 @ 00000164d89ae900] using cpu capabilities: MMX2 SSE2Fast SSSE3 SSE4.2 AVX FMA3 BMI2 AVX2 AVX512
[libx264 @ 00000164d89ae900] profile High, level 3.1, 4:2:0, 8-bit
[libx264 @ 00000164d89ae900] 264 - core 164 r3094 bfc87b7 - H.264/MPEG-4 AVC codec - Copyleft 2003-2022 - http://www.videolan.org/x264.html - options: cabac=1 ref=3 deblock=1:0:0 analyse=0x3:0x113 me=hex subme=7 psy=1 psy_rd=1.00:0.00 mixed_ref=1 me_range=16 chroma_me=1 trellis=1 8x8dct=1 cqm=0 deadzone=21,11 fast_pskip=1 chroma_qp_offset=-2 threads=12 lookahead_threads=2 sliced_threads=0 nr=0 decimate=1 interlaced=0 bluray_compat=0 constrained_intra=0 bframes=3 b_pyramid=2 b_adapt=1 b_bias=0 direct=1 weightb=1 open_gop=0 weightp=2 keyint=250 keyint_min=25 scenecut=40 intra_refresh=0 rc_lookahead=40 rc=crf mbtree=1 crf=17.0 qcomp=0.60 qpmin=0 qpmax=69 qpstep=4 ip_ratio=1.40 aq=1:1.00
Output #0, mp4, to 'C:\FFmpeg\video.avi1.mp4':
  Metadata:
    major_brand     : mp42
    minor_version   : 0
    compatible_brands: mp42mp41
    encoder         : Lavf59.20.100
  Stream #0:0(eng): Video: h264 (avc1 / 0x31637661), yuv420p(tv, bt709, progressive), 1280x720, q=2-31, 29.97 fps, 30k tbn (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : ?Mainconcept Video Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.25.100 libx264
    Side data:
      cpb: bitrate max/min/avg: 0/0/0 buffer size: 0 vbv_delay: N/A
  Stream #0:1(eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 128 kb/s (default)
    Metadata:
      creation_time   : 2021-06-04T15:29:20.000000Z
      handler_name    : #Mainconcept MP4 Sound Media Handler
      vendor_id       : [0][0][0][0]
      encoder         : Lavc59.25.100 aac
frame=  300 fps=7.8 q=-1.0 Lsize=    7220kB time=00:00:10.00 bitrate=5911.4kbits/s dup=1 drop=0 speed=0.261x
video:7051kB audio:157kB subtitle:0kB other streams:0kB global headers:0kB muxing overhead: 0.167149%
[libx264 @ 00000164d89ae900] frame I:3     Avg QP:15.73  size:254956
[libx264 @ 00000164d89ae900] frame P:105   Avg QP:18.08  size: 48183
[libx264 @ 00000164d89ae900] frame B:192   Avg QP:21.91  size:  7269
[libx264 @ 00000164d89ae900] consecutive B-frames:  7.0% 18.0% 15.0% 60.0%
[libx264 @ 00000164d89ae900] mb I  I16..4:  8.2% 25.2% 66.6%
[libx264 @ 00000164d89ae900] mb P  I16..4:  7.1%  7.5%  4.8%  P16..4: 37.6% 23.1% 13.1%  0.0%  0.0%    skip: 6.8%
[libx264 @ 00000164d89ae900] mb B  I16..4:  0.8%  0.5%  0.1%  B16..8: 34.7%  7.0%  1.6%  direct: 4.8%  skip:50.5%  L0:38.4% L1:37.7% BI:23.9%
[libx264 @ 00000164d89ae900] 8x8 transform intra:36.5% inter:46.0%
[libx264 @ 00000164d89ae900] coded y,uvDC,uvAC intra: 48.6% 55.6% 26.0% inter: 25.5% 20.1% 1.2%
[libx264 @ 00000164d89ae900] i16 v,h,dc,p: 18% 46% 13% 23%
[libx264 @ 00000164d89ae900] i8 v,h,dc,ddl,ddr,vr,hd,vl,hu: 16% 27% 35%  3%  3%  3%  5%  3%  5%
[libx264 @ 00000164d89ae900] i4 v,h,dc,ddl,ddr,vr,hd,vl,hu: 22% 29% 15%  4%  6%  5%  9%  4%  6%
[libx264 @ 00000164d89ae900] i8c dc,h,v,p: 45% 31% 16%  8%
[libx264 @ 00000164d89ae900] Weighted P-Frames: Y:26.7% UV:2.9%
[libx264 @ 00000164d89ae900] ref P L0: 59.5% 27.3% 10.4%  2.6%  0.1%
[libx264 @ 00000164d89ae900] ref B L0: 88.6% 10.6%  0.8%
[libx264 @ 00000164d89ae900] ref B L1: 96.5%  3.5%
[libx264 @ 00000164d89ae900] kb/s:5770.09
[aac @ 00000164d893c200] Qavg: 232.235
Presione una tecla para continuar . . .






```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)