extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const StoryManager = preload("res://Dialogue/StoryManager/StoryManager.cs")

onready var story_manager : StoryManager = get_node("/root/Node2D/StoryManager")

onready var rng : RandomNumberGenerator = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	print("story_manager : " + str(story_manager))
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
