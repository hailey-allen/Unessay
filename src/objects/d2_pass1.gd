extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pkey
onready var control = get_node("../../../../")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pkey = randi()%10+1
	text = "Share public key " + str(control.pkey)

func _pressed():
	if get_node("../../../../").state == 1:
		get_node("../../../../").state = 2
		control.share_cor = 1
		
		
func _process(delta):
	if control.state == 1:
		text = "Share public key " + str(control.pkey)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
