extends RigidBody2D
var jump_speed = 600
var speed = 300


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

@onready var player_3_0 = $"."
@onready var sprite_2d = $Sprite2D.modulate

var is_red = false
var is_blue = false
var is_green = false
var is_orange = false





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var left_key = Input.is_action_pressed("ui_left")
	var right_key = Input.is_action_pressed("ui_right")
	if left_key:
		set_linear_velocity(Vector2(-speed, get_linear_velocity().y))
	if right_key:
		set_linear_velocity(Vector2(+speed, get_linear_velocity().y))

	#Change to red
	if Input.is_action_just_pressed("red"):
		player_3_0.modulate = Color(1, 0, 0, 1)
	#Change to blue
	if Input.is_action_just_pressed("blue"):
		player_3_0.modulate = Color(0, 0, 1, 1)
		
		#Change to green
	if Input.is_action_just_pressed("green"):
		player_3_0.modulate = Color(0, 0.502, 0, 1)
	#Change to orange
	if Input.is_action_just_pressed("orange"):
		player_3_0.modulate = Color(1, 0.4, 0, 1)

func _on_area_2d_area_entered(area):
	if area.is_in_group("platform2_0"):
		print("collided")
		set_linear_velocity(Vector2(0,-jump_speed))

		
	# CHECKS TO SEEEEE WHAT PLATFORM THE PLAYER IS TOUCHING --------------------------------------------------
#What happens if the player is on the red platform
	if area.is_in_group("red_platform"):
		print("Red collide")
		print(" ")
		is_red = true
		is_blue = false
		is_green = false
		is_orange = false
		
		if(modulate == Color(1, 0, 0, 1) and (is_red)):
			print("Player is Red and the platform is Red")
			print(" ")		
		if(modulate != Color(1, 0, 0, 1)):
			print("The player is not red")
		##get_tree().reload_current_scene()
			
#-------------------------------------------------------------------------------
##What happens if the player is on the blue platform
	if area.is_in_group("blue_platform"):
		print("Blue collide")
		print(" ")
		is_red = false
		is_blue = true
		is_green = false
		is_orange = false
		
		if(modulate == Color(0, 0, 1, 1) and (is_blue)):
			print("Player is Blue and the platform is blu")
			print(" ")
			
		if(modulate != Color(0, 0, 1, 1)):
			print("The player is not blue")
			#get_tree().reload_current_scene()
			
	##W-------------------------------------------------
	
	
	##What happens if the player is on the green platform
	if area.is_in_group("green_platform"):
		print("Green collide")
		print(" ")
		is_red = false
		is_blue = false
		is_green = true
		is_orange = false
		if(modulate == Color(0, 0.502, 0, 1) and (is_green)):
			print("Player is green and the platform is green")
			print(" ")
			
		if(modulate != Color(0, 0.502, 0, 1)):
			print("The player is not green")
			#get_tree().reload_current_scene()
			
	##--------------------------------------------------
	#
		##What happens if the player is on the orange platform
	if area.is_in_group("orange_platform"):
		print("Orange collide")
		print(" ")
		is_red = false
		is_blue = false
		is_green = false
		is_orange = true
		if(modulate == Color(1, 0.4, 0, 1) and (is_orange)):
			print("Player is orange and the platform is orange")
			print(" ")
			
		if(modulate != Color(1, 0.4, 0, 1)):
			print("The player is not orange")
			##get_tree().reload_current_scene()
			#
	##--------------------------------------------------
	
		
		
		
		
