extends Panel

export var new_character_interval = 0.1
onready var dialogue_label : RichTextLabel = $DialogueLabel
onready var timer = $Timer
var current_text = ""
var current_char_index = 0

func _ready():
	get_node("/root/Node2D/StoryManager").dialogueBox = self
	#print("dialouge box " + str(get_node("/root/Node2D/StoryManager").dialogueBox))

func trigger_dialogue(text : String):
	show()
	dialogue_label.text = ""
	dialogue_label.append_bbcode("[color=#795c34]")
	current_text = text
	if ":" in current_text:
		dialogue_label.append_bbcode("[color=#4b371c]" + text.split(':')[0] + "\n[color=#795c34]")
		current_text = text.split(':')[1]
	current_char_index = 0
	timer.start(new_character_interval)
	
func add_character():
	if current_char_index < current_text.length():
		dialogue_label.append_bbcode(current_text[current_char_index])
		current_char_index += 1
	else:
		timer.stop()
		print(dialogue_label.text)
	
	



func _on_Timer_timeout():
	add_character()
