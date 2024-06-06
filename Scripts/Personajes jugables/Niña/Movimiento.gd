extends CharacterBody3D

@export var pixeles_por_metro: float = 100; #CONVERCION IMPORTANTE ESTA CANTIDAD DE PIXELES ES IGUAL A 1 METRO EN NUESTRO JUEGO
@export var rapidez: float = 1 * pixeles_por_metro; 


func ready():
	pass

func _physics_process(delta): #Este metodo permite que el jugador pueda moverse en el eje X y Z (No he considero que pueda saltar)
	
	velocity = Vector3(Input.get_axis("ui_left","ui_right"),0,Input.get_axis("ui_up","ui_down"));
	corriendo();
	velocity = velocity.normalized()*rapidez*pixeles_por_metro;
	
	move_and_slide();
	pass
	
func corriendo(): #este metodo aumenta la velocidad del jugador cuando mantiene presionado SHIFT
	if Input.is_action_pressed("ui_shift"):
		rapidez = 2;
	else:
		rapidez = 1;
		pass
	pass
	
	
