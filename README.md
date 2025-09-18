# Godot Music Controller
For Godot 4.5 (4.3+ compatible)

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

Verify the `Music` audio bus.

1.  Open the Audio bus editor.
2.  Confirm that `Music` audio bus is available.
    1.  If the last bus is `New Bus`, try restarting the editor and checking again.
3.  If the audio bus doesn't exist, add it and save the project.

Verify the `ProjectMusicController` autoload.

1.  Open the Project Settings.
2.  Open the `Globals` tab.
3.  Confirm that the `ProjectMusicController` is listed as an autoload.

Setup music blending between scenes.

1.  Open up the `project_music_controller.tscn` scene.
2.  Inspect the root node of the scene tree (`ProjectMusicController`).
3.  Confirm that the `audio_bus` is set to `Music`.
4.  Expand the `Blending` variable group.
5.  Set a `fade_out_duration` or `fade_in_duration`, in seconds.

Add background music to your scenes.

1.  Import the music asset into the project.
2.  Add a `BackgroundMusicPlayer`.
3.  Assign the music asset to the `stream` property.
4.  Make sure that the `bus` property is set to `Music` and `autoplay` is `true`.
5.  Save the scene.

### Internal Details

When a background music player is about to exit the scene tree, it gets reparented to the autoload node. This allows it to continue playing until the next scene is ready and a new background music player is detected. If the audio stream players share the same stream, then the controller will seek the next player to the same position on the stream, before removing the previous one. If a different stream is detected and a fade out duration is set, then the previous player will blend into the next one, by having its volume lowered to zero over the fade out duration.

The autload adds the "BlendMusic" audio bus is added at runtime. If a fade in duration is set, then the temporary bus is used to combine the increasing volume of the player with any other animations local to the scene.

The autoload will work with any `AudioStreamPlayer` with `bus` set to `Music` and `autoplay` set to `true`. These are detected up as they enter the scene tree. To dynamically add an `AudioStreamPlayer` to the background music, call `ProjectMusicController.play_stream(background_music_player)`.

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
