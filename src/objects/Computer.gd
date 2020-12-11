extends StaticBody2D

onready var screen: = $CanvasLayer/ComputerScreen

func _ready() -> void:
	screen.visible = false

func interaction() -> void:
	makevis()
	
func makevis():
	screen.visible = !screen.visible
	
func _input(event):
	if screen.visible && event.is_action_pressed("interact"):
		pass

func set_label(Label):
	Label.text = "Use"

