extends Control

var badending = false
var goodending = false
var character = "";

# Called when the node enters the scene tree for the first time.
func _ready():
	match (character):
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
			$PatronessBackground.hide()
		"GoodEnding":
			$GoodEnding.hide()
		"BadEnding":
			$BadEnding.hide()
	match (Global.story_manager.story.variablesState["currentNPC"]):
		"Tim":
			$TimBackground.show()
			$Horse.show()
			character = "Tim"
		"Barkeeper":
			$BarkeeperBackground.show()
			$BarkeeperDesk.show()
			character = "Barkeeper"
		"Maid":
			$MaidBackground.show()
			character = "Maid"
		"Bard":
			$BardBackground.show()
			character = "Bard"
		"Patroness":
			character = "Patroness"
		"GoodEnding":
			$GoodEnding1.show()
			#await get_tree().create_timer(7.0).timeout
			$GoodEnding1.hide()
			$GoodEnding2.show()
			character = "GoodEnding"
		"BadEnding":
			character = "BadEnding"
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
