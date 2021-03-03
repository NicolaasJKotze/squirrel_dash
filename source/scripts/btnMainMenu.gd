extends Button

func _ready():
	get_node(".").connect("pressed", self, "_on_btnMainMenu_pressed")

func _on_btnMainMenu_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
