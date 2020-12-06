extends StaticBody2D

var currentMask = 0111

func interaction() -> void:
	makevis()

func makevis():
	$MaskMenu/UMaskMenu.visible = !$MaskMenu/UMaskMenu.visible

func _input(event):
	if $MaskMenu/UMaskMenu.visible == true &&  event.is_action_pressed("interact"):
		$MaskMenu/UMaskMenu.visible = !$MaskMenu/UMaskMenu.visible

func changeMask(mask):
	currentMask = mask

func _process(delta):
	if currentMask == 0777:
		makevis()
		queue_free()
