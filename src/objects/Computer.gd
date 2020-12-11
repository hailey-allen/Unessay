extends StaticBody2D


func interaction() -> void:
	makevis()
	
func makevis():
	$CanvasLayer/ComputerScreen.visible = !$CanvasLayer/ComputerScreen.visible
	
func _input(event):
	if $CanvasLayer/ComputerScreen.visible && event.is_action_pressed("interact"):
		pass

func set_label(Label):
	Label.text = "Use"

