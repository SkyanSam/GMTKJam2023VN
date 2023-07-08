extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var characterNames : PoolStringArray

# Called when the node enters the scene tree for the first time.
func _ready():
	for character in characterNames:
		Global.story_manager.story.variablesState["Tim"]
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
