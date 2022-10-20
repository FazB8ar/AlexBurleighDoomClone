extends Area
export (int) var health_val = 20
func _ready():
	pass

func _on_Health_Pickup_body_entered(body):
	if body.is_in_group("Player"):
		PlayerStats.change_health(health_val)
