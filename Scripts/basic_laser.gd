extends Area2D

var angle: float
var speed = 1000

func _ready() -> void:
	add_to_group("laser")

func _physics_process(delta: float) -> void:
	global_position += transform.x * speed * delta

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy") and body.has_method("take_damage"):
		body.take_damage(2)
	else:
		print("no mewthod")
