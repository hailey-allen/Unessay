extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var state = 0
var primes = [1,2,3,5,7,11,13,17,19]
var base
var mod
var pkey
var oth_pkey
var pubkey
var calckey = false
var oth_pubkey
var share_cor
var seckey
var re = false
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	base = randi()%10+1
	var rand = randi()%9
	mod = primes[rand]
	oth_pkey = randi()%10+1
	oth_pubkey = int(pow(base,oth_pkey))%mod
	share_cor = 0


func _process(delta):
	if state == 1 and calckey == false:
		pubkey = int(pow(base,pkey))%mod
		calckey = true
	if state == 3:
		seckey = int(pow(oth_pubkey,pkey))%mod
	if share_cor == 2 and re == false:
		restart()
		re = true
	
	
	
	
func restart():
	state = 0
	randomize()
	base = randi()%10+1
	var rand = randi()%9
	mod = primes[rand]
	oth_pkey = randi()%10+1
	oth_pubkey = int(pow(base,oth_pkey))%mod
	calckey = false
	get_node("Term_D1/MaskMenu/UMaskMenu/Mask1").keygen()
	get_node("Term_D1/MaskMenu/UMaskMenu/Mask2").keygen()
	get_node("Term_D1/MaskMenu/UMaskMenu/Mask3").keygen()
	get_node("Term_D2/MaskMenu/UMaskMenu/Mask3").keygen()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
