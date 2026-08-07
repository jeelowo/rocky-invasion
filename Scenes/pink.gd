extends CharacterBody2D

@onready var ship = $Ship

func _ready() -> void:
	add_to_group("enemy")

func move_towards_player():
	print(ship.global_position)
