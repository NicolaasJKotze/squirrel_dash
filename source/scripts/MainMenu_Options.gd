extends Node2D

func _ready():
	get_node("Panel/btnBack").connect("pressed", self, "_on_btnBack_pressed")

func _on_btnBack_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
