@tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("ProjectMusicController", "res://addons/maaacks_music_controller/base/scenes/Autoloads/ProjectMusicController.tscn")

func _exit_tree():
	remove_autoload_singleton("ProjectMusicController")
