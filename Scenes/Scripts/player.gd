extends CharacterBody2D

var pos: Vector2 = Vector2(200,300) # 0,0
const speed: int = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(200,300)
	position = pos

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed 
	move_and_slide()
	#position += direction * speed * delta

	#attack
	if Input.is_action_just_pressed("main action"):
		print("Primary Attack!")
	
	if Input.is_action_just_pressed("secondary action"):
		print("Secondary attack!")
		$"..".knock()
