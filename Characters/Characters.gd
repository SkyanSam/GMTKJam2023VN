extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var temp = "MCspriteAHappy"
var MCLetter = "A"
var MCEmotion = "Neutral"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	get_node(temp).hide()
	match get_node("/root/Node2D/StoryManager").GetVariable("MCLetter"):
		"A":
			match get_node("/root/Node2D/StoryManager").GetVariable("MCEmotion"):
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
			match get_node("/root/Node2D/StoryManager").GetVariable("MCEmotion"):
				"Blush":
					$MCspriteBBlush.show()
					temp = "MCspriteBBlush"
				"Neutral":
					$MCspriteBNeutral.show()
					temp = "MCspriteBNeutral"
				"Sad":
					$MCspriteBSad.show()
					temp = "MCspriteBSad"
				"Touched":
					$MCspriteBTouched.show()
					temp = "MCspriteBTouched"
		"C":
			match get_node("/root/Node2D/StoryManager").GetVariable("MCEmotion"):
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
			match get_node("/root/Node2D/StoryManager").GetVariable("MCEmotion"):
				"Annoy":
					$MCspriteDAnnoy.show()
					temp = "MCspriteDAnnoy"
				"Neutral":
					$MCspriteDNeutral.show()
					temp = "MCspriteDNeutral"
				"Surprise":
					$MCspriteDSurprise.show()
					temp = "MCspriteDSurpirse"
				"Uhh":
					$MCspriteDUhh.show()
					temp = "MCspriteDUhh"
					


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
