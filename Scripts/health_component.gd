class_name HealthComponent
extends Node2D

signal health_changed(current_health: int, max_health: int)
signal damaged(amount: int)
signal healed(amount: int)
signal died

@export var max_health: int = 100

var health: int

func _ready() -> void:
	health = max_health

func damage(amount: int) -> void:
	if amount <= 0:
		return

	health = max(health - amount, 0)

	damaged.emit(amount)
	health_changed.emit(health, max_health)

	if health == 0:
		died.emit()

func heal(amount: int) -> void:
	if amount <= 0:
		return

	health = min(health + amount, max_health)

	healed.emit(amount)
	health_changed.emit(health, max_health)

func is_dead() -> bool:
	return health <= 0
