extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var choice_button = preload("res://Dialogue/ChoiceButton.tscn")
onready var buttons = [ ]
var is_choosing : bool = false
var index = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	#print(self)
	print(Global.story_manager)
	Global.story_manager.choiceBox = self
	print("CHOICE BOX SUCCESS!!")
	print("CHOICE BOX " + str(Global.story_manager.choiceBox))
	print("succcc")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#if Input.is_action_just_pressed("next_dialogue") && is_choosing:
		#select_choice()
	
	if Input.is_action_just_pressed("ui_down") && index + 1 < buttons.size():
		index += 1
	
	if Input.is_action_just_pressed("ui_up") && index - 1 >= 0:
		index -= 1
	
func trigger_choice(choices):
	
	# Removing all previous buttons
	for i in buttons.size():
		buttons[i].queue_free()
	buttons.clear()
		
	# Populating with new buttons
	for i in choices.size():
		print("choices size " + str(choices.size()))
		buttons.append(choice_button.instance())
		add_child(buttons[i])
		print("choice button " + str(buttons[i]))
		buttons[i].text = choices[i]
		
	# Grabbing focus
	is_choosing = true
	buttons[0].grab_focus()
	show()

func select_choice():
	Global.story_manager.SelectChoice()
