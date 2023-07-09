extends Node

export var label = ""
export var path = ""

func _ready():
	trigger_story()
	
func trigger_story():
	#print("trig" + str(get_node("/root/Node2D/StoryManager")))
	get_node("/root/Node2D/StoryManager").Start(path, label)
