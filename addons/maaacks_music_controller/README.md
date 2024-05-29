# Godot Music Controller
For Godot 4.2

This music controller keeps music playing between scenes and blends tracks.

[Example on itch.io](https://maaack.itch.io/godot-game-template)  
_Example is of [Maaack's Game Template](https://github.com/Maaack/Godot-Game-Template), which includes additional features._

## Use Case
For mainting music playback during scene changes and blending between tracks.

## Features

* Automatically detects and reparents audio streams with a matching audio bus (`Music` by default) and autoplay enabled.
* Allows blending between tracks, and fade-in/fade-out timers.
* Works with Godot's built-in `AudioStreamPlayer`.
* Includes a simple scene extending `AudioStreamPlayer` with the audio bus and autoplay already set.

### How it Works
- `ProjectMusicController.tscn` is an autoload that keeps music playing between scenes. It detects music stream players as they are added to the scene tree, reparents them  to itself when they are removed, and blends the tracks.
- An audio bus is added at runtime that manages blending the fade in with any other animations on a music player.  
  
## Installation

### Godot Asset Library
This package is available as a plugin, meaning it can be added to an existing project. 

![Package Icon](/addons/maaacks_music_controller/media/MusicController-Icon-black-transparent-256x256.png)  

When editing an existing project:

1.  Go to the `AssetLib` tab.
2.  Search for "Maaack's Music Controller".
3.  Click on the result to open the plugin details.
4.  Click to Download.
5.  Check that contents are getting installed to `addons/` and there are no conflicts.
6.  Click to Install.
7.  Reload the project (you may see errors before you do this).
8.  Enable the plugin from the Project Settings > Plugins tab.


### GitHub


1.  Download the latest release version from [GitHub](https://github.com/Maaack/Godot-Music-Controller/releases/latest).  
2.  Extract the contents of the archive.
3.  Move the `addons/maaacks_music_controller` folder into your project's `addons/` folder.  
4.  Open/Reload the project.  
5.  Enable the plugin from the Project Settings > Plugins tab.  

#### Extras

Users that want additional features can try [Maaack's Game Template](https://github.com/Maaack/Godot-Game-Template).  

## Usage

Use `AudioStreamPlayer` nodes in your scenes to play background music as normal. Make sure a matching audio bus is set (`Music` by default), and that autoplay is set to true.

## Links
[Attribution](ATTRIBUTION.md)  
[License](LICENSE.txt)  

