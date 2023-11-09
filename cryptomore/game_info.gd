extends Sprite2D

var player

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("/root/Global").player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print_info(player)
	if get_node("/root/Global").completedTasks_user == get_node("/root/Global").count_tasks[get_node("/root/Global").day]:
		get_node("/root/Global").day += 1
		get_node("/root/Global").completedTasks_user = 0
		get_node("/root/Global").completedTasks_hacker = 0
		get_node("/root/Global").score_user += 1
	elif get_node("/root/Global").completedTasks_hacker == get_node("/root/Global").count_tasks[get_node("/root/Global").day]:
		get_node("/root/Global").day += 1
		get_node("/root/Global").completedTasks_user = 0
		get_node("/root/Global").completedTasks_hacker = 0
		get_node("/root/Global").score_hacker += 1

func print_info(player):
	var font = load("res://font/EpilepsySans.ttf")
	var label = Label.new()
	var score
	var avatar = Sprite2D.new()
	label.position = Vector2(-72.5, -70)
	if player == "user":
		avatar.texture = load("res://sprites/sprite/clerk.png")
		score = get_node("/root/Global").score_user
		label.text += "Играет пользователь\n"
		avatar.position = Vector2(-150, 10)
		avatar.scale = Vector2(0.6, 0.6);
	elif player == "hacker":
		avatar.texture = load("res://sprites/sprite/hacker.png")
		score = get_node("/root/Global").score_hacker
		label.text += "Играет хакер\n"
		avatar.position = Vector2(-160, -5)
		avatar.scale = Vector2(0.7, 0.7);
	label.add_theme_font_override("font", font)
	label.add_theme_color_override("font_color", Color(0, 0, 0, 1))
	label.add_theme_font_size_override("font_size", 35)
	label.text += "Количество очков: " + str(score) + "\n"
	label.text += "Таски: "
	var completedTasks
	if player == "user":
		label.text += str(get_node("/root/Global").completedTasks_user)
		label.text += "\nБайты: " + str(get_node("/root/Global").bytes)
	else:
		label.text += str(get_node("/root/Global").completedTasks_hacker)
	self.add_child(label)
	self.add_child(avatar)
