extends CharacterBody2D

var speed = 130

func _process(_delta):
    velocity = Input.get_vector("move_left", "move_right", "move_up", "move_down") * speed
    move_and_slide()
   
