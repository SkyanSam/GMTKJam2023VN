extends TextureButton


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(Global.story_manager.story)
	#if Global.story_manager.story.variablesState["canUseBarkeeper"] == true:
	if Global.story_manager.GetVariable("canUseBard") == true:
		show()
	else: 
		hide()
