extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if Input.is_action_pressed("WASD_up"):
		position.y -= 1
	if Input.is_action_pressed("WASD_down"):
		position.y += 1

func on_area_entered(area):
	print("stupido")
	if area.name == "BallArea2D":
		area.velocity = -area.velocity
		print("ciao")
