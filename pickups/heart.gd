extends "res://pickups/pickup.gd"

# Heart heals one heart

func body_entered(body):
	if body.name == 'player' && body.health < body.MAXHEALTH:
		body.health += 1
		queue_free()
		