extends Node2D
var upper = 1
var lower = 0
onready var rng = RandomNumberGenerator.new()
var upgrades = ["Clone", "Shield Bash", "Fire Spear", "Power Kick", "Get Up", "Fire Sword 2", "Block Arrows 3", "Hammer Size 2", "Fire Hammer", "Flame Breath", "Energy Recharge 2", "Aim Time 2", "Arrow Width 2", "Fire Arrows 2", "Jetpack 2", "Repair", "Armour"]

func _on_Button_pressed():
	randomize()
	$RichTextLabel.set_text(upgrades[rng.randi_range(0, upgrades.size() - 1)])
#	upper = int($LineEdit.text)
#	lower = int($LineEdit2.text)
#	$RichTextLabel.set_text(str(rng.randi_range(lower, upper)))


func _on_LineEdit_focus_entered():
	$LineEdit.text = ""


func _on_LineEdit2_focus_entered():
	$LineEdit2.text = ""
