extends Node2D

onready var input_box: LineEdit = $InputBox
# The password to enter into the textbox"
const PASSWORD = "password"

signal verified

func get_notes_string() -> String:
	var notes = Inventory.get_notes()
	var notes_string: = ""
	for note in notes:
		notes_string += note + '\n'
		
	return notes_string


func _on_ComputerScreen_visibility_changed() -> void:
	$Hints.text = get_notes_string()


func _on_InputBox_text_entered(new_text: String) -> void:
	"This is what happens when you press enter on the input box"
	if new_text == PASSWORD:
		emit_signal("verified")
	
	input_box.clear()
