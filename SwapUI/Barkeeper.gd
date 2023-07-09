extends TextureButton


func _ready() -> void:
	if Global.story_manager.GetVariable("canUseBarkeeper") == true:
		$Barkeeper.show()
	else: 
		$Barkeeper.hide()
