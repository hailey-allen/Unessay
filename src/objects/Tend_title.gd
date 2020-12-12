extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var control = get_node("../../../../")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if control.state == 0 and control.share_cor ==2:
		text = "Incorrect secret key entered, you need to make a new one"
	elif control.state == 3:
		text = "Enter your secret key to kill the virus"
	else :
		text = "Generate your secret key to kill the virus"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
