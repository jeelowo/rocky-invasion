extends Area2D

@onready var laser: Node2D = $".."

func _on_area_exited(area: Area2D):
	if area.is_in_group("laser"):
		area.queue_free()
