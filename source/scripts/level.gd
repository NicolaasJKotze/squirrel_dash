extends Node2D

const TIMER_LIMIT = 2.0 # Print time intervals
var timer = 0.0

func _process(delta):
	timer += delta
	if timer > TIMER_LIMIT:
		timer = 0.0
		print("fps: " + str(Engine.get_frames_per_second()))

func _ready():
	get_node("HUD/btnMainMenu").connect("pressed", self, "_on_btnMainMenu_pressed")

func _on_btnMainMenu_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
