extends Node

var laser

func _ready() -> void:
	preload("res://Scenes/basic_laser.tscn")

func _physics_process(delta: float) -> void:
	pass
	
func spawn_laser(laser: StaticBody2D):
	#laser
	pass
