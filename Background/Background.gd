extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var temp = "";

# Called when the node enters the scene tree for the first time.
func _ready():
	match (temp):
		"Tim":
			$TimBackground.hide()
		"Barkeeper":
			$BarkeeperBackground.hide()
			$BarkeeperDesk.hide()
		"Maid":
			$MaidBackground.hide()
		"Bard":
			
		"Patroness":
			
		"GoodEnding":
			$GoodEnding.hide()
		"BadEnding":
			
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
		"GoodEnding":
			$GoodEnding1.show()
			await get_tree().create_timer(7.0).timeout
			$GoodEnding1.hide()
			$GoodEnding2.show()
			temp = "GoodEnding"
		"BadEnding"
			temp = "BadEnding"
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
