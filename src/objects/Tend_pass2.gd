extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pkey
onready var control = get_node("../../../../")
# Called when the node enters the scene tree for the first time.
func _ready():
	text = ""
	randomize()
	pkey = randi()%10+1

func _pressed():
	if control.state ==3:
		control.state = 0
		control.share_cor = 2
		control.restart()
		
func _process(delta):
	if control.state == 3:
		if pkey == control.seckey: 
			randomize()
			pkey = randi()%10+1
		text = "Enter secret key " + str(pkey)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
