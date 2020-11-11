tool
extends Button

export(String, FILE, '*.tscn') var next_scene_path: = ""


func _get_configuration_warning() -> String:
	return "The Next Level property can't be empty" if next_scene_path == "" else ""
