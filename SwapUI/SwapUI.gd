extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var characterNames : PoolStringArray

# Called when the node enters the scene tree for the first time.
func _ready():
	for currentCharacter in characterNames:
		if(!Global.story_manager.story.variablesState[currentCharacter]):
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
