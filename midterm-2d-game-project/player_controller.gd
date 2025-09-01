extends CharacterBody2D

@onready var animation_player = $AnimationPlayer
var walk_animation_template = "Player/Walk_%s"
var speed = 130

func _process(_delta):
	velocity = Input.get_vector("move_left", "move_right", "move_up", "move_down") * speed
	move_and_slide()
	
	if Input.is_action_pressed("move_up"):
		animation_player.play(walk_animation_template % "up")
	elif Input.is_action_pressed("move_left"):
		animation_player.play(walk_animation_template % "Left")
	elif Input.is_action_pressed("move_right"):
		animation_player.play(walk_animation_template % "right")
	elif Input.is_action_pressed("move_down"):
		animation_player.play(walk_animation_template % "down")
	else : 
		animation_player.stop()
   
