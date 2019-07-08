extends "res://pickups/pickup.gd"

# Golden heart is a full heal

func body_entered(body):
	if body.name == 'player' && body.health < body.MAXHEALTH:
		body.health = body.MAXHEALTH
		queue_free()