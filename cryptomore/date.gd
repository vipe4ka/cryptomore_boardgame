extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	var date = get_node("/root/Global").day
	var label = Label.new()
	var font = load("res://font/EpilepsySans.ttf")
	label.add_theme_font_override("font", font)
	label.add_theme_color_override("font_color", Color(0, 0, 0, 1))
	label.add_theme_font_size_override("font_size", 22)
	label.text += str(date) + " день"
	self.add_child(label)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
