extends Control

var badending = false
var goodending = false
var character = "";

# Called when the node enters the scene tree for the first time.
func _process(delta):
	match (character):
		"Tim":
			$TimBackground.hide()
			$Horse.hide()
		"Bartender":
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
	match (get_node("/root/Node2D/StoryManager").GetVariable("currentNPC")):
		"Tim":
			$TimBackground.show()
			$Horse.show()
			character = "Tim"
		"Bartender":
			$BarkeeperBackground.show()
			$BarkeeperDesk.show()
			character = "Bartender"
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
