extends Path2D

@onready var ship: Node2D = $"../../Ship/CharacterBody2D"


func _process(delta: float) -> void:
	global_position = ship.global_position
