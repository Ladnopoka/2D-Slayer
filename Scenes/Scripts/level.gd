extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Player.position.x > 1000:
		print("Position exceeded")
		$Player.pos.x = 0

func knock():
	print("Knock Knock! ")
	$Player.position.x = 100


func _on_area_2d_body_entered(body):
	print("I have entered the portal!")
