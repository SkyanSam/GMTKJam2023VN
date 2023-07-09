extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_node("/root/Node2D/notebook").visible = !get_node("/root/Node2D/notebook").visible
	#var isVisible = get_node("/root/Node2D/notebook").visible
	#if isVisible: get_node("/root/Node2D/notebook").grab_focus()
	#else: get_node("/root/").grab_focus()
