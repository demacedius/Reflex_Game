extends Area2D

var carre = load("res://Character/ProjectileCarre.tscn")
var rond = load("res://Character/RondProjectile.tscn")
var triangle = load("res://Character/TriangleProjectile.tscn")

# warning-ignore:unused_argument
func _process(delta):
	createProjectile()


func createProjectile():
	if Input.is_action_just_pressed("A"):
		var carrePro = carre.instance()
		get_parent().add_child(carrePro)
		carrePro.set_position(get_node("Pro_pos").get_global_position())
	if Input.is_action_just_pressed("Z"):
		var RondPro = rond.instance()
		get_parent().add_child(RondPro)
		RondPro.set_position(get_node("Pro_pos").get_global_position())
	if Input.is_action_just_pressed("E"):
		var TrianglePro = triangle.instance()
		get_parent().add_child(TrianglePro)
		TrianglePro.set_position(get_node("Pro_pos").get_global_position())

# warning-ignore:unused_argument
func _on_Player_body_entered(body):
	queue_free()
	get_tree().quit()
