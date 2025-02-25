extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




#func collision(body):
	#if body.get_parent().is_in_group("Paddles"):
		#print("Hello")
		##pass # Replace with function body.



func _on_area_2d_area_entered(area):
	print("collided")
