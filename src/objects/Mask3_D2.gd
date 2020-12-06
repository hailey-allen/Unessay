extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Set UMask to 0704"

func _pressed():
	get_node("../../..").changeMask(704)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
