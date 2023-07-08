extends Area2D

export var dialogue
var hover = false

func _process(delta):
	
	
func _on_Area2D_mouse_entered() -> void:
	hover = true

func _on_Area2D_mouse_exited() -> void:
	hover = false

