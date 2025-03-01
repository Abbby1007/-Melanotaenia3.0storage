extends Node2D

@onready var player_3_0 = $Player3_0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("red"):
		player_3_0.modulate = Color(1, 0, 0, 1)
		
	if Input.is_action_just_pressed("blue"):
		player_3_0.modulate = Color(0, 0, 1, 1)
		
	
