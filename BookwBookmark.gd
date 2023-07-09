extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 3
var isStart = false
var isCredits = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Moves to Vector(0,0) at a speed of 1 unit per second
	var speed = 10 
	if(isStart):
		# Change this to increase it to more units/second
		position = position.move_toward(Vector2(0,1000000), delta * speed)
		
	if(isCredit):
		position = position.move_toward(Vector2(600,0), delta * speed)


func _on_StartButton_pressed():
	isStart = true




func _on_CreditsButton_pressed():
	isCredits = true
