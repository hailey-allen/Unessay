extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var control = get_node("../../../../")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if control.state == 0 and control.share_cor == 0:
		text = "You need to first generate your Public key at the first terminal"
	elif control.state == 1:
		text = "Enter your public key to share. The public key to use to calculate the secret key is " + str(control.oth_pubkey)
	elif control.state == 2 and control.share_cor == 1:
		text = "Return to the first terminal to calculate your secret key with " + str(control.oth_pubkey)
	elif control.state == 2 and control.share_cor == 2:
		text = "You incorrectly shared your public key go back to the first terminal to create another " + str(control.oth_pubkey)
		control.restart()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
