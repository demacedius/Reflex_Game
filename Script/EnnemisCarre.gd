extends KinematicBody2D
class_name Carre

var velocity = Vector2()
var Speed = 350


func _process(delta):
	motion(delta)
	
func motion(delta):
	velocity.x = -Speed
	
	var colision = move_and_collide(velocity * delta)
	if colision != null:
		get_parent().remove_child(self)
