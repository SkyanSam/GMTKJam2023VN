extends TextureButton


func _process(delta: float) -> void:
	if Global.story_manager.GetVariable("canUseBarkeeper") == true:
		show()
	else: 
		hide()

