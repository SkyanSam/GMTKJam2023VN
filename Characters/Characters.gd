extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var temp = ""
var MCLetter = "A"
var MCEmottion = "Happy"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node(temp).hide()
	match Global.story_manager.story.variableState[MCLetter]:
		"A":
			match Global.story_manager.story.variableState[MCEmotion]:
				"Happy":
					$MCspriteAHappy.show()
					temp = "MCspriteAHappy"
				"Neutral":
					$MCspriteANeutral.show()
					temp = "MCspriteANeutral"
				"Open":
					$MCspriteAOpen.show()
					temp = "MCspriteAOpen"
		"B":
			match Global.story_manager.story.variableState[MCEmotion]:
				"Blush":
					$MCspriteBBlush.show()
					temp = "MCspriteBBlush"
				"Neutral":
					$MCspriteBNeutral.show()
					temp = "MCspriteBNeutral"
				"Sad":
					$MCspriteBSad.show()
					temp = "MCspriteBSad"
		"C":
			match Global.story_manager.story.variableState[MCEmotion]:
				"Neutral":
					$MCspriteCNeutral.show()
					temp = "MCspriteCNeutral"
				"Pissed":
					$MCspriteCPissed.show()
					temp = "MCspriteCPissed"
				"Smirk":
					$MCspriteCSmirk.show()
					temp = "MCspriteCSmirk"
		"D":
			match Global.story_manager.story.variableState[MCEmotion]:
				"Annoy":
					$MCspriteDAnnoy.show()
					temp = "MCspriteDAnnoy"
				"Neutral":
					$MCspriteDNeutral.show()
					temp = "MCspriteDNeutral"
				"Surprise":
					$MCspriteDSurprise.show()
					temp = "MCspriteDSurpirse"
					


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
