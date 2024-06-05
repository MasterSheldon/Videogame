extends CharacterBody3D

@export var pixeles_por_metro: float = 100; #CONVERCION IMPORTANTE ESTA CANTIDAD DE PIXELES ES IGUAL A 1 METRO EN NUESTRO JUEGO
var direccion: Vector3;
var velocidad: Vector3;
@export var rapidez: float = 1 * pixeles_por_metro; 

func ready():
	pass

func _input(event):
	#VECTOR EN 0 Y ABAJO ESTAN LOS CONTROLES DE MOVIMIENYTO
	direccion.x =Input.get_axis("ui_left", "ui_right");
	direccion.z = Input.get_axis("ui_up", "ui_down");
		
	direccion = direccion.normalized();

func _physics_process(delta):
	velocidad.x = direccion.x*rapidez;
	velocidad.z = direccion.z*rapidez;
	velocity = velocidad*rapidez;
	move_and_slide();

