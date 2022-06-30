extends Node
#Player variables
 
 
var health = 100
var max_health = 200
var armor = 0
var max_armor = 100
var guns_carried = []
var ammo_pistol = 100
var ammo_Rocket = 100
var ammo_shells = 100
var ammo_AK47 = 100
var ammo_max_pistol = 200
var ammo_max_Rocket = 50
var ammo_max_shells = 100
var ammo_max_AK47 = 200
 
var red_key = false
var blue_key = false
var yellow_key = false
var current_gun = "Pistol"
 
func reset():
	var health = 100
	var max_health = 200
	var armor = 0
	var max_armor = 100
	var guns_carried = []
	var ammo_pistol = 100
	var ammo_Rocket = 100
	var ammo_shells = 100
	var ammo_AK47 = 100
	var ammo_max_pistol = 200
	var ammo_max_Rocket = 50
	var ammo_max_shells = 100
	var ammo_max_AK47 = 200
	var red_key = false
	var blue_key = false
	var yellow_key = false
	var current_gun = "Pistol"
 
func _ready():
	pass
	
func take_damage(amount):
	if amount > armor:
		amount = amount - armor
		armor = 0
	else:
		change_armor(-amount)
		return
	###apply remaining damage to health
	change_health(-amount)
		
	
func change_health(amount):
	health += amount
	health = clamp(health, 0, max_health)
	
func change_armor(amount):
	armor += amount
	armor = clamp(armor,0,max_armor)
	
func change_pistol_ammo(amount):
	ammo_pistol+=amount
	ammo_pistol = clamp(ammo_pistol,0,ammo_max_pistol)
	
func change_shotgun_ammo(amount):
	ammo_shells+=amount
	ammo_shells = clamp(ammo_shells,0,ammo_max_shells)
	
func change_Rocket_ammo(amount):
	ammo_Rocket+=amount
	ammo_Rocket = clamp(ammo_Rocket,0,ammo_max_Rocket)
	
func change_AK47_ammo(amount):
	ammo_AK47+=amount
	ammo_AK47 = clamp(ammo_AK47,0,ammo_max_AK47)
	
func get_pistol_ammo():
	return str(ammo_pistol)
 
func get_shotgun_ammo():
	return str(ammo_shells)
 
func get_Rocket_ammo():
	return str(ammo_Rocket)
	
func get_AK47_ammo():
	return str(ammo_AK47)
	
func get_health():
	return str(health)
 
func get_armor():
	return str(armor)
		
