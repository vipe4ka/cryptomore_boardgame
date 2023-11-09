extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	var label = Label.new()
	var font = load("res://font/EpilepsySans.ttf")
	label.add_theme_font_override("font", font)
	label.add_theme_color_override("font_color", Color(255, 255, 255, 1))
	label.add_theme_font_size_override("font_size", 35)
	label.position = Vector2(150, 65)
	label.text += "Играть за хакера"
	self.add_child(label)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	get_tree().change_scene_to_file("res://mainWindow.tscn")
	get_node("/root/Global").player = "hacker"
