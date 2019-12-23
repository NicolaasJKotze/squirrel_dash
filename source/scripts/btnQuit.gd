extends Button

func _ready():
	get_node(".").connect("pressed", self, "_on_btnQuit_pressed")

func _on_btnQuit_pressed():
	get_tree().quit()