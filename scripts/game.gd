extends Node2D

@onready var ball_spawner_node = $ballspawner
@onready var ball_scene = $ball
@onready var ball_spawner_enemy_node = $ballspawnerenemy
@onready var ui_node = $UI

var player_score = 0
var enemy_score = 0

func _on_playerballdeathzone_body_entered(body):
	ball_scene.global_position = ball_spawner_node.global_position
	enemy_score += 1
	ui_node.set_enemy_score_label(enemy_score)

func _on_enemyballdeathzone_body_entered(body):
	ball_scene.global_position = ball_spawner_enemy_node.global_position
	player_score += 1
	ui_node.set_player_score_label(player_score)

func _process(delta):	
	if Input.is_action_just_pressed("pause"):
		ui_node.pause_menu()

	if player_score == 5:
		player_score = 0
		enemy_score = 0
		get_tree().change_scene_to_file("res://scenes/gameoverwin.tscn")
		
	elif enemy_score == 5:
		player_score = 0
		enemy_score = 0
		get_tree().change_scene_to_file("res://scenes/gameoverlose.tscn")

func _on_timer_timeout():
	ball_scene.increase_speed()
