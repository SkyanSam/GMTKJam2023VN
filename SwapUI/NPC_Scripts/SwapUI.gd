extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var characterNames : PoolStringArray

# Called when the node enters the scene tree for the first time.
func _ready():
	for currentCharacter in characterNames:
		if !Global.story_manager.story.variablesState[currentCharacter]:
			get_node(currentCharacter).modulate = Color(86,86,86)
		else:
			get_node(currentCharacter).modulate = Color(0,0,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	if Global.story_manager.story.variablesState["canUseTim"]:
		Global.story_manager.story.variablesState["currentNPC"] = "Tim"
	if Global.story_manager.story.variablesState["canUseBarkeeper"]:
		Global.story_manager.story.variablesState["currentNPC"] = "Barkeeper"
	if Global.story_manager.story.variablesState["canUseMaid"]:
		Global.story_manager.story.variablesState["currentNPC"] = "Maid"
	if Global.story_manager.story.variablesState["canUseBard"]:
		Global.story_manager.story.variablesState["currentNPC"] = "Bard"
	if Global.story_manager.story.variablesState["canUsePatroness"]:
		Global.story_manager.story.variablesState["currentNPC"] = "Patroness"

