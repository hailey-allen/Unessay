tool
extends Button

export(String, FILE) var next_scene_path: = ""

func _on_button_up() -> void:
	get_tree().change_scene(next_scene_path)
	
func _get_configuration_warning() -> String:
	return "The Next Level property can't be empty" if next_scene_path == "" else ""
