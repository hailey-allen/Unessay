extends CanvasLayer
# This script is only here to be used in a level scene with a level_debug_overlay
# script attached, which will allow you to enable this debug there. Pretty scuffed 
# implementation for now, maybe will improve later but hey it works.

var stats: = []


func add_stat(stat_name, object, stat_ref, is_method) -> void:
	stats.append([stat_name, object, stat_ref, is_method])
	print(stats)


func _process(_delta: float) -> void:
	var label_text = ""
	
	# Globally important stats 
	var fps = Engine.get_frames_per_second()
	label_text += str("FPS: ", fps, "\n")
	
	var mem = OS.get_static_memory_usage()
	label_text += str("Static memory: ", String.humanize_size(mem), "\n")
	
	# Level specific stuff
	for s in stats:
		var value = null
		if s[1] and weakref(s[1]).get_ref():
			if s[3]:
				value = s[1].call(s[2])
			else:
				value = s[1].get(s[2])
		label_text += str(s[0], ": ", value, "\n")
		
	$Label.text = label_text
