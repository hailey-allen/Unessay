extends "res://src/ui/SceneChangeButton.gd"

func _on_button_up() -> void:
	get_node("HelpPop").popup()
