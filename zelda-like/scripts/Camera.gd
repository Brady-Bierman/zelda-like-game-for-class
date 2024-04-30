extends Camera2D


@onready var player = $"../player"
@onready var size: Vector2i = get_viewport_rect().size


func _ready():
	update_pos()
	


func _physics_process(delta):
	update_pos()
	
	


func update_pos():
	var current_cell: Vector2i = Vector2i(player.global_position) / size
	global_position = current_cell * size
	
	



