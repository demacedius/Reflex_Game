extends Node2D

var Enn_Tab = [load("res://Character/EnnemisCarre.tscn"),load("res://Character/EnnemisRond.tscn"),load("res://Character/EnnemisTriangle.tscn")]
func _ready():
	randomize()
	$Timer.start()

func spawnEnnemis():
	var ennemis = Enn_Tab[randi() % Enn_Tab.size()].instance()
	get_parent().add_child(ennemis)
	ennemis.set_position(get_node("SpawnEnnemisPosition").get_global_position())
	$Cannon/AnimationPlayer.play("fire")

func _on_Timer_timeout():
	spawnEnnemis()
