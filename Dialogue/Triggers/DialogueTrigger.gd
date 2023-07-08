extends Node

export var label = ""
export var path = ""

func _ready():
	trigger_story()
	
func trigger_story():
	print("trig" + str(Global.story_manager))
	Global.story_manager.Start(path, label)
