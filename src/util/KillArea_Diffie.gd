extends Area2D

onready var Term_con = "Termial_Con"

func _on_KillArea_body_entered(body: Node) -> void:
	if body.name == "Player":
		body.die()
		get_node("../Termial_Con").restart()


