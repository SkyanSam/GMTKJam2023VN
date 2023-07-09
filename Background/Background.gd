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
			$Horse.hide()
		"Barkeeper":
			$BarkeeperBackground.hide()
			$BarkeeperDesk.hide()
		"Maid":
			$MaidBackground.hide()
		"Bard":
			$BardBackground.hide()
		"Patroness":
			$PatronBackground.hide()
		"GoodEnding":
			$GoodEnding.hide()
		"BadEnding":
			
	match (Global.story_manager.story.variablesState["currentNPC"]):
		"Tim":
			$TimBackground.show()
			$Horse.show()
			temp = "Tim"
		"Barkeeper":
			$BarkeeperBackground.show()
			$BarkeeperDesk.show()
			temp = "Barkeeper"
		"Maid":
			$MaidBackground.show()
			temp = "Maid"
		"Bard":
			$BardBackground.show()
			temp = "Bard"
		"Patroness":
			$PatronBackground.show()
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
