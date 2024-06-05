extends CharacterBody2D

var pixeles_por_metro: float = 137; #CONVERCION IMPORTANTE ESTA CANTIDAD DE PIXELES ES IGUAL A 1 METRO EN NUESTRO JUEGO
var direccion: Vector2;
var velocidad: Vector2;
var rapidez: float = .15 * pixeles_por_metro;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	#VECTOR EN 0 Y ABAJO ESTAN LOS CONTROLES DE MOVIMIENYTO
	direccion.x =Input.get_axis("ui_left", "ui_right");
	direccion.y = Input.get_axis("ui_up", "ui_down");
		
	direccion = direccion.normalized();

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocidad.x = direccion.x*rapidez;
	velocidad.y = direccion.y*rapidez;
	velocity = velocidad*rapidez;
	move_and_slide();
