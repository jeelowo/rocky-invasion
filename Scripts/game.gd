extends Node2D

@onready var ship: Node2D = $Ship

func _ready() -> void:
	ship.global_position = Vector2(0,0)
