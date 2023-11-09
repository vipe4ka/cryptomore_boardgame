extends Sprite2D
"metadata/MODE"

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = get_node("/root/Global").player
	var day = get_node("/root/Global").day
	var count_tasks = get_node("/root/Global").count_tasks
	print_tasks(player, day, count_tasks)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func print_tasks(player, day, count_tasks):
	var tasks
	var font = load("res://font/EpilepsySans.ttf")
	var label = Label.new()
	label.position = Vector2(-120,-123)
	label.add_theme_font_override("font", font)
	label.add_theme_color_override("font_color", Color(0, 0, 0, 1))
	label.add_theme_font_size_override("font_size", 14)
	if player == "user":
		for i in range(count_tasks[day]):
			var index_task =  randi()%get_node("/root/Global").user_tasks.size()
			label.text += "\n" + str(i+1) + ". " + get_node("/root/Global").user_tasks[index_task]
	elif player == "hacker":
		for i in range(count_tasks[day]):
			var index_task =  randi()%get_node("/root/Global").hacker_tasks.size()
			label.text += "\n" + str(i+1) + ". " + get_node("/root/Global").hacker_tasks[index_task]
	self.add_child(label)
