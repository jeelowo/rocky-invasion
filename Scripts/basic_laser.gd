extends Area2D

var angle: float
var speed = 1000

func _ready() -> void:
	add_to_group("laser")

func _physics_process(delta: float) -> void:
	global_position += transform.x * speed * delta
