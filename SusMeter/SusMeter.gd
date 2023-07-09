extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var status

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	status = Global.story_manager.story.variableState["susMeter"]
	match (status):
		0:
			$sus1.hide()
			$sus2.hide()
			$sus3.hide()
		1:
			$sus1.show()
			$sus2.hide()
			$sus3.hide()
		2:
			$sus1.show()
			$sus2.show()
			$sus3.hide()
		3:
			$sus1.show()
			$sus2.show()
			$sus3.show()
