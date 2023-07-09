extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var characterNames : PoolStringArray

# Called when the node enters the scene tree for the first time.
func _ready():
	for currentCharacter in characterNames:
		if !Global.story_manager.story.GetVariable(currentCharacter):
			get_node(currentCharacter).modulate = Color(86,86,86)
		else:
			get_node(currentCharacter).modulate = Color(0,0,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Tim_pressed():
	if Global.story_manager.GetVariable("canUseTim"):
		Global.story_manager.SetVariable("currentNPC", "Tim")
		Global.story_manager.GotoLabel("TimScene")

func _on_Barkeeper_pressed():
	if Global.story_manager.GetVariable("canUseBarkeeper"):
		Global.story_manager.SetVariable("currentNPC", "Barkeeper")
		Global.story_manager.GotoLabel("BartenderScene")

func _on_Maid_pressed():
	if Global.story_manager.GetVariable("canUseMaid"):
		Global.story_manager.SetVariable("currentNPC", "Maid")
		Global.story_manager.GotoLabel("EllegardScene")

func _on_Bard_pressed():
	if Global.story_manager.GetVariable("canUseBard"):
		Global.story_manager.SetVariable("currentNPC","Bard")
		Global.story_manager.GotoLabel("BardScene")

func _on_Patroness_pressed():
	if Global.story_manager.GetVariable("canUsePatroness"):
		Global.story_manager.sSetVariable("currentNPC", "Patroness")
		Global.story_manager.GotoLabel("PatronScene")
