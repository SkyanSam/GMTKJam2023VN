extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var temp

# Called when the node enters the scene tree for the first time.
func _ready():
	$DummyScene.queue_free()
	load("DummyScene")
	match (Global.story_manager.story.variableState["currentNPC"]):
		"Tim":
			temp = load().instance()
		"Barkeeper":
			temp = load("BarkeeperBackground").instance()
			add_child(temp)
			temp = load("BarkeeperDesk'").instance()
		"Maid":
			temp = load("MaidBackground").instance()
		"Bard":
			temp = load().instance()
		"Patroness":
			temp = load().instance()
	add_child(temp)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
