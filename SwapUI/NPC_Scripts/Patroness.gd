extends TextureRect

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if get_node("/root/Node2D/StoryManager").GetVariable("canUsePatroness") == true:
		show()
	else: 
		hide()
