# Godot Music Controller
For Godot 4.4 (4.3+ compatible)

This music controller keeps music playing between scenes and blends tracks.

[Example on itch.io](https://maaack.itch.io/godot-game-template)  
_Example is of [Maaack's Game Template](https://github.com/Maaack/Godot-Game-Template), which includes additional features._

## Objective

For mainting music playback during scene changes and blending between tracks.

[Maaack's Game Template](https://github.com/Maaack/Godot-Game-Template) is recommended for first time users, especially those new to Godot.  

## Features

* Automatically detects and reparents audio streams with a matching audio bus (`Music` by default) and autoplay enabled.
* Allows blending between tracks, and fade-in/fade-out timers.
* Works with Godot's built-in `AudioStreamPlayer`.
* Includes a simple scene extending `AudioStreamPlayer` with the audio bus and autoplay already set.

### How it Works
- `project_music_controller.tscn` is an autoload that keeps music playing between scenes. It detects music stream players as they are added to the scene tree, reparents them  to itself when they are removed, and blends the tracks.
- An audio bus is added at runtime that manages blending the fade in with any other animations on a music player.  

### Extras or Components

Users that want additional features can try [Maaack's Game Template](https://github.com/Maaack/Godot-Game-Template) or other options from the [plugin suite](/addons/maaacks_music_controller/docs/PluginSuite.md).  


## Installation

### Godot Asset Library
This package is available as a plugin, meaning it can be added to an existing project. 

![Package Icon](/addons/maaacks_music_controller/media/music_controller-icon-black-transparent-256x256.png)  

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


## Usage

In your project settings, under the `Globals` tab, confirm that the `ProjectMusicController` is listed as an autoload.

Open `project_music_controller.tscn` scene, and inspect the root node of the scene tree. Set the music controller's audio bus to the one designated for playing background music ("Music" by default).

> [!IMPORTANT]  
> The controller assumes a "Music" audio bus has been added to the project. The `Audio` controls are usually available on the bottom panel of the editor.  

Use `AudioStreamPlayer` nodes in your scenes to play background music as normal. Set the audio bus to the one designated for playing background music, and set autoplay to true.  

You should be able to interact with your audio stream in the scene as normal. It will not get reparented until it's parent scene exits the scene tree.  

### More Documentation

[Automatic Updating](/addons/maaacks_music_controller/docs/AutomaticUpdating.md)  

---

## Featured Games

| Spud Customs | Rent Seek Kill  | A Darkness Like Gravity  |  
| :-------:| :-------: | :-------: |
![Spud Customs](/addons/maaacks_music_controller/media/thumbnail-game-spud-customs.png)  |  ![Rent-Seek-Kill](/addons/maaacks_music_controller/media/thumbnail-game-rent-seek-kill.png)  |  ![A Darkness Like Gravity](/addons/maaacks_music_controller/media/thumbnail-game-a-darkness-like-gravity.png)  |
[Find on Steam](https://store.steampowered.com/app/3291880/Spud_Customs/) | [Play on itch.io](https://xandruher.itch.io/rent-seek-kill)  |  [Play on itch.io](https://maaack.itch.io/a-darkness-like-gravity)  |


[All Shared Games](/addons/maaacks_music_controller/docs/GamesMade.md)  


## Community

Join the [Discord server](https://discord.gg/AyZrJh5AMp ) and share your work with others. It's also a space for getting or giving feedback, and asking for help. 
 

## Links
[Attribution](/addons/maaacks_music_controller/ATTRIBUTION.md)  
[License](/addons/maaacks_music_controller/LICENSE.txt)  
[Godot Asset Library](https://godotengine.org/asset-library/asset/2898)  
