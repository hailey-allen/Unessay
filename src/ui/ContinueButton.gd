extends "res://src/ui/SceneChangeButton.gd"

func _on_button_up() -> void:
	get_tree().change_scene(next_scene_path)

