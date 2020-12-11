extends Node2D

onready var input_box: LineEdit = $InputBox


func get_notes_string() -> String:
	var notes = Inventory.get_notes()
	var notes_string: = ""
	for note in notes:
		notes_string += note + '\n'
		
	return notes_string


func _on_ComputerScreen_visibility_changed() -> void:
	$Hints.text = get_notes_string()
