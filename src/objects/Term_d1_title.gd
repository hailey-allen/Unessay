extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var control = get_node("../../../../")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if control.state == 0 and control.share_cor == 2:
		text = "Incorrect shared key shared, need to restart key share your new base for key exchange which is " + str(control.base) + ". Your new prime is " + str(control.mod)
	elif control.state == 0:
		text = "Your base for key exchange is " + str(control.base) + ". Your prime is " + str(control.mod)
	elif control.state == 1:
		control.re = false
		control.share_cor = 0
		text = "Your private key is " + str(control.pkey) + " Share your caculated public key of " + str(control.pubkey) +" Go to the terminal accross the gap"
	elif control.state == 2:
		text = "Enter the public key that was shared with you to calculate the secert key"
	elif control.state == 3:
		text = "Secert key is " + str(control.seckey) + " Go enter this into the main terminal in the middle of the room"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
