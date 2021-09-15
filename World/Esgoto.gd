extends Node2D

var segundaFalaRodou = false
var terceiraFalaRodou = false

func _ready():
	$AmbientSound.play()
	var primeira_fala = Dialogic.start("primeira_fala", false)
	add_child(primeira_fala)
	ps.health = ps.max_health

func _process(delta):
	if segundaFalaRodou == false && ps.health < ps.max_health:
		var segunda_fala = Dialogic.start("segunda_fala", false)
		add_child(segunda_fala)
		segundaFalaRodou = true
	else:
		pass
