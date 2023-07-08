extends "res://Dialogue/Triggers/DialogueTrigger.gd"

var touching_player = false

func _process(delta):
	if (Input.is_action_just_pressed("interact") && touching_player):
		trigger_story()
		Global.player.target_x = $PlayerTarget.global_position.x
		Global.player.velocity = Vector2.ZERO
		Global.player.move_to_target = true

func _on_DialogueAreaTrigger_body_entered(body):
	if (body == Global.player):
		touching_player = true

func _on_DialogueAreaTrigger_body_exited(body):
	if (body == Global.player):
		touching_player = false
