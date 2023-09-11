extends Node2D

@onready var ball_reference : Ball = get_node("res://Scenes/ball.tscn")
@onready var player = $Player
@onready var ball = $Ball
@onready var opponent = $Opponent
func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass



# Hit Functions to handle ball movement/direciton
func _on_ball_ball_hit_player():
	paddle_hit()


func _on_ball_ball_hit_bumper():
	bumper_hit()
	print("bumper hit")
	
	
	
func paddle_hit():
	ball.velocity.y *= -1

func bumper_hit():
	ball.velocity.x *= -1
