extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var temp = "";

# Called when the node enters the scene tree for the first time.
func _ready():
	match (temp):
		"Tim":
			
		"Barkeeper":
			$BarkeeperBackground.hide()
			$BarkeeperDesk.hide()
		"Maid":
			$MaidBackground.hide()
		"Bard":
			
		"Patroness":
			
	match (Global.story_manager.story.variableState["currentNPC"]):
		"Tim":
			temp = "Tim"
		"Barkeeper":
			$BarkeeperBackground.show()
			$BarkeeperDesk.show()
			temp = "Barkeeper"
		"Maid":
			$MaidBackground.show()
			temp = "Maid"
		"Bard":
			temp = "Bard"
		"Patroness":
			temp = "Patroness"
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
