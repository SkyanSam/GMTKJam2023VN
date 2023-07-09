extends TextureRect


bool isOpen = false

func _ready():
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SoundButton_pressed():
	pass # Replace with function body.

func _on_CloseButton_pressed():
	if isOpen == true:
		isOpen = false
		var tween = get_tree().create_tween().bind_node(self).set_trans(Tween.TRANS_ELASTIC)
		tween.tween_property(get_parent(), "modulate", Color.RED, 1)
		

func _on_SaveButton_pressed():
	pass # Replace with function body.

func _on_OpenButton_pressed():
	pass # Replace with function body.
