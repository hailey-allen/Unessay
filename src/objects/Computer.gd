extends StaticBody2D

onready var screen: = $CanvasLayer/ComputerScreen
onready var tree: = get_tree()
var is_paused: bool = false

signal verified # lol 

func _ready() -> void:
	screen.visible = false

func interaction() -> void:
	toggle_visibility()
	
func toggle_visibility():
	screen.visible = !screen.visible
	
func _input(event):
	if screen.visible && event.is_action_pressed("pause"):
		toggle_visibility()


func set_label(Label):
	Label.text = "Use"


func _on_ComputerScreen_visibility_changed() -> void:
	if tree.paused:
		tree.paused = false
	else:
		tree.paused = true


func _on_ComputerScreen_verified() -> void:
	emit_signal("verified")
