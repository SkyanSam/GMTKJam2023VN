extends Node

export var label = ""
export var path = ""

func trigger_story():
	Global.story_manager.Start(path, label)
