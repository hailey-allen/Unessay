extends StaticBody2D
# Level03 init SpawnLocation pos: 64,128

onready var screen: = $CanvasLayer/ComputerScreen

func _ready() -> void:
	screen.visible = false

func interaction() -> void:
	screen.get_node("Hints").text = get_notes_string()
	makevis()
	
func makevis():
	screen.visible = !screen.visible
	
func _input(event):
	if screen.visible && event.is_action_pressed("interact"):
		pass

func set_label(Label):
	Label.text = "Use"


func get_notes_string() -> String:
	var notes = Inventory.get_notes()
	print(notes)
	var notes_string: = ""
	for note in notes:
		notes_string += note + '\n'
		
	return notes_string
