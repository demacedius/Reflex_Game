extends KinematicBody2D


var speed = 300


func _process(delta):
	var motion = Vector2(1, 0) * speed
	move_and_slide(motion).normalized()



func _on_Hitbox_body_entered(body):
	if body is Rond:
		queue_free()
		body.queue_free()
	elif body.name:
		queue_free()
