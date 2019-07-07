extends "res://pickups/pickup.gd"


func body_entered(body):
	if body.name == 'player' && body.health != body.MAXHEALTH:
		body.health += 1
		queue_free()