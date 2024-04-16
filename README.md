# GSmartControl Made Portable
These build scripts and supplementary files will debloat, compress and turn GSmartControl into portable single executable apps. This is done using 7-zip SFX which is included along with an already debloated copy of the program.

My purpose for this is to have a single file portable program that can also run in a 64bit only environment. This serves as a universal solution to run it on WinPE and Windows Server Core (without wow64) but also as a way to run it easily from a remote access tool like ScreenConnect with it's unique "back stage" feature.

<p align="center">
  <img src="https://raw.githubusercontent.com/jmclaren7/gsmartcontrol-sfx/master/extra/animation1.gif?raw=true">
</p>

## Resource Hacker
The only thing not included is the freeware tool [Resource Hacker](https://www.angusj.com/resourcehacker/), if this is installed on your system or along side the script then the build script can add the program icon to the generated EXE along with adjusting the requested administrator privileges.