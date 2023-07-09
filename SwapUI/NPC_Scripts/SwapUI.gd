extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var characterNames : PoolStringArray

# Called when the node enters the scene tree for the first time.
func _ready():
	for currentCharacter in characterNames:
		if !get_node("/root/Node2D/StoryManager").story.variablesState[currentCharacter]:
			get_node(currentCharacter).modulate = Color(86,86,86)
		else:
			get_node(currentCharacter).modulate = Color(0,0,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	if get_node("/root/Node2D/StoryManager").story.variablesState["canUseTim"]:
		get_node("/root/Node2D/StoryManager").story.variablesState["currentNPC"] = "Tim"
	if get_node("/root/Node2D/StoryManager").story.variablesState["canUseBarkeeper"]:
		get_node("/root/Node2D/StoryManager").story.variablesState["currentNPC"] = "Barkeeper"
	if get_node("/root/Node2D/StoryManager").story.variablesState["canUseMaid"]:
		get_node("/root/Node2D/StoryManager").story.variablesState["currentNPC"] = "Maid"
	if get_node("/root/Node2D/StoryManager").story.variablesState["canUseBard"]:
		get_node("/root/Node2D/StoryManager").story.variablesState["currentNPC"] = "Bard"
	if get_node("/root/Node2D/StoryManager").story.variablesState["canUsePatroness"]:
		get_node("/root/Node2D/StoryManager").story.variablesState["currentNPC"] = "Patroness"

