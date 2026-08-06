extends CharacterBody2D

@export var speed = 200.0
@export var rotation_speed = 1.5
@onready var health_component: HealthComponent = $"Health Component"

func get_input():
	look_at(get_global_mouse_position())
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
