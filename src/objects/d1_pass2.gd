extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pkey

onready var control = get_node("../../../../")
# Called when the node enters the scene tree for the first time.
func _ready():
	keygen()

func _pressed():
	if get_node("../../../../").state == 0:
		get_node("../../../../").state = 1
		get_node("../../../../").pkey = pkey
	if control.state == 2:
		control.state = 0
		control.share_cor = 2
		control.restart()
		
func _process(delta):
	if control.state == 2:
		text = "Shared key is " + str(control.pkey)
	
		
func keygen():
	randomize()
	pkey = randi()%10+1
	text = "Choose private key " + str(pkey)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
