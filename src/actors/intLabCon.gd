extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _set_pos(collider):
	set_gobal_position(Vector2(collider.get_global_position().x-300, collider.get_global_position().y- 100))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
