extends Control

func _ready():
	get_node("Panel/btnStartGame").connect("pressed", self, "_on_btnStartGame_pressed")
	get_node("Panel/btnOptions").connect("pressed", self, "_on_btnOptions_pressed")
	get_node("Panel/btnLeaderboard").connect("pressed", self, "_on_btnLeaderboard_pressed")
	get_node("Panel/btnAbout").connect("pressed", self, "_on_btnAbout_pressed")
	get_node("Panel/btnCredits").connect("pressed", self, "_on_btnCredits_pressed")
	get_node("Panel/btnQuit").connect("pressed", self, "_on_btnQuit_pressed")

func _on_btnStartGame_pressed():
	get_tree().change_scene("res://level.tscn")

func _on_btnOptions_pressed():
	get_tree().change_scene("res://MainMenu_Options.tscn")

func _on_btnLeaderboard_pressed():
	get_tree().change_scene("res://MainMenu_Leaderboard.tscn")

func _on_btnAbout_pressed():
	get_tree().change_scene("res://MainMenu_About.tscn")

func _on_btnCredits_pressed():
	get_tree().change_scene("res://MainMenu_Credits.tscn")

func _on_btnQuit_pressed():
	get_tree().quit()