extends Panel

export var new_character_interval = 0.1
onready var dialogue_label = $DialogueLabel
onready var timer = $Timer
var current_text = ""
var current_char_index = 0

func _ready():
	Global.story_manager.dialogueBox = self
	print("dialouge box " + str(Global.story_manager.dialogueBox))

func trigger_dialogue(text : String):
	show()
	dialogue_label.text = ""
	current_text = text
	current_char_index = 0
	timer.start(new_character_interval)
	
func add_character():
	if current_char_index < current_text.length():
		dialogue_label.text += current_text[current_char_index]
		current_char_index += 1
	else:
		timer.stop()
	
	



func _on_Timer_timeout():
	add_character()
