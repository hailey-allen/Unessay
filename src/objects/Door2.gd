extends StaticBody2D

var currentMask = 0400
var swap = true

func interaction() -> void:
	makevis()

func makevis():
	if swap:
		$MaskMenu/UMaskMenu.visible = !$MaskMenu/UMaskMenu.visible
func _input(event):
	if $MaskMenu/UMaskMenu.visible == true &&  event.is_action_pressed("interact"):
		$MaskMenu/UMaskMenu.visible = false
		swap = false
	

func changeMask(mask):
	currentMask = mask

func _process(delta):
	if currentMask == 0262:
		makevis()
		queue_free()
	if $MaskMenu/UMaskMenu.visible == false:
		swap = true
		
		
func set_label(Label):
	Label.text = "Open"
		


