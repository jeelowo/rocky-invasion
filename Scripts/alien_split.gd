extends Node2D
@onready var alien_body: CharacterBody2D = $".."
var alien_scene = preload("uid://btvwcb5oo5383")
@onready var enemies: Node2D = $"../../"
@onready var animated_sprite_2d: AnimatedSprite2D = $"../AnimatedSprite2D"

func split():
	var mini_alien1 = alien_scene.instantiate()
	var mini_alien2 = alien_scene.instantiate()

	mini_alien1.global_position = global_position + Vector2(-10, -10)
	mini_alien2.global_position = global_position + Vector2(10, 10)
	
	mini_alien1.can_split = false
	mini_alien2.can_split = false
	
	mini_alien1.health = 2
	mini_alien2.health = 2
	
	mini_alien1.scale = Vector2(2, 2)
	mini_alien2.scale = Vector2(2, 2)
	
	mini_alien1.start_animation = "first_variant"
	mini_alien2.start_animation = "first_variant"

	enemies.call_deferred("add_child", mini_alien1)
	enemies.call_deferred("add_child", mini_alien2)
