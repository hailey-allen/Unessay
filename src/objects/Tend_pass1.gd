extends "res://src/ui/SceneChangeButton.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var control = get_node("../../../../")
# Called when the node enters the scene tree for the first time.
func _ready():
	text = "" # Replace with function body.
func _pressed():
	if control.state ==3:
		get_tree().change_scene("res://src/levels/EndScreen.tscn")

func _process(delta):
	if control.state == 3:
		text = "Enter secret key " + str(control.seckey)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
