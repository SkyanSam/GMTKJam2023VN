extends TextureRect

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Global.story_manager.GetVariable("canUsePatroness") == true:
		show()
	else: 
		hide()
