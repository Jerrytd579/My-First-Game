extends "res://engine/entity.gd"


var movetimer_length = 15
var movetimer = 0

func _ready():
	SPEED = 40
	DAMAGE = 0.25
	$anim.play('default')
	movedir = dir.rand()

func _physics_process(delta):
	movement_loop()
	damage_loop()
	
	if movetimer > 0:
		movetimer -= 1
	if movetimer == 0 || is_on_wall():
		movedir = dir.rand()
		movetimer = movetimer_length