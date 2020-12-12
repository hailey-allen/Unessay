extends StaticBody2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
onready var popup: Popup = $CanvasLayer/Popup
# This note variable must be different for each note
export var note: = ""
export var is_fragment = false # True is fragment, false is hint

const FRAGMENT: String = "Password fragment: "
const HINT: String = "Password hint: "

func get_full_note() -> String:
	var full_note: = ""
	if is_fragment:
		full_note = FRAGMENT + note
	else:
		full_note = HINT + note
	return full_note

func display_popup(msg_to_display: String) -> void:
	popup.popup_centered()
	popup.get_node("Label").text = msg_to_display
	get_tree().paused = true


func interaction() -> void:
	var full_note = get_full_note()
	Inventory.notes.append(full_note)

	display_popup(full_note)
	anim_player.play("fade_out")


func set_label(Label) -> void:
	Label.text = "Read"


func _on_Close_button_up() -> void:
	popup.hide()
	get_tree().paused = false
