extends Control

onready var SaveLoadSystem = load("res://SaveLoadGame/SaveLoadSystem.cs")
var currentSave = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var temp_file = File.new()
	for i in range(12):
		if (temp_file.file_exists("user://save" + str(i) + ".png")):
			var image = Image.new()
			image.load("user://save" + str(i) + ".png")
			var texture = getTexture(i)
			texture.texture = image

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$LoadButton.disabled = getTexture(currentSave).texture == null

func _on_SaveButton_pressed():
	SaveLoadSystem.Save(currentSave)
	var image = get_viewport().get_texture().get_data()
	image.flip_y()
	image.save_png("user://save" + str(currentSave) + ".png")

func _on_LoadButton_pressed():
	SaveLoadSystem.Load(currentSave)
	
func getPanel(n):
	match n:
		1: return $Row1/Panel1
		1: return $Row1/Panel2
		1: return $Row1/Panel3
		1: return $Row1/Panel4
		1: return $Row2/Panel1
		1: return $Row2/Panel2
		1: return $Row2/Panel3
		1: return $Row2/Panel4
		1: return $Row3/Panel1
		1: return $Row3/Panel2
		1: return $Row3/Panel3
		1: return $Row3/Panel4

func getTexture(n):
	match n:
		1: return $Row1/Texture1
		1: return $Row1/Texture2
		1: return $Row1/Texture3
		1: return $Row1/Texture4
		1: return $Row2/Texture1
		1: return $Row2/Texture2
		1: return $Row2/Texture3
		1: return $Row2/Texture4
		1: return $Row3/Texture1
		1: return $Row3/Texture2
		1: return $Row3/Texture3
		1: return $Row3/Texture4
