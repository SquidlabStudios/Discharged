extends Node2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var alreadyUsed = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if alreadyUsed == false && ps.health < ps.max_health:
		ps.health = ps.max_health
		$Sprite.texture = load("res://sprites/Objetos/HEVoff.png")
		alreadyUsed = true
	else:
		pass
