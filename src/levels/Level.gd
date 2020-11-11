extends Node2D
# Please extend this script for any script that you want to attach to another level

func _ready() -> void:
	$FadeInOut.show()
	$FadeInOut.fade_out()
