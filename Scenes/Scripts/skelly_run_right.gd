extends CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(150,10)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Vector2.RIGHT
	velocity = direction * 100
	
	move_and_slide()
	
	if position.x > 1000:
		position.x = 150
