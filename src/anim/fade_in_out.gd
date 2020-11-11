extends ColorRect

signal fade_in_finished
signal fade_out_finished

func fade_in() -> void:
	$AnimationPlayer.play("fade_in")


func fade_out() -> void:
	$AnimationPlayer.play("fade_out")


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	if anim_name == "fade_in":
		emit_signal("fade_in_finished")
	elif anim_name == "fade_out":
		emit_signal("fade_out_finished")
