extends Node

var VP = Vector2.ZERO

var score = 0
var time = 0
var lives = 0

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	randomize()
	VP = get_viewport().size
	var _signal = get_tree().get_root().connect("size_changed", self, "_resize")
	reset()

func _resize():
	VP = get_viewport().size

func reset():
	get_tree().paused = false
	score = 0
	time = 30
	lives = 5
